#import "AppController.h"

#import "MOParts.h"
#import "MOPartRows.h"

@implementation MOParts

+ (MOParts*) findByName:(NSString*)code context:(NSManagedObjectContext*)context useLike:(BOOL)useLike
{
	NSFetchRequest* req = [[NSFetchRequest alloc] init];
	[req setEntity:[NSEntityDescription entityForName:@"Parts" inManagedObjectContext:context] ];
	if( useLike )
		[req setPredicate:[NSPredicate predicateWithFormat:@"name like %@",code]];
	else
		[req setPredicate:[NSPredicate predicateWithFormat:@"name = %@",code]];
	NSArray* objs = [context executeFetchRequest:req error:nil];
	[req release];
	
	if( [objs count] > 0 )
		return [objs objectAtIndex:0];
	
	return nil;
}

- (NSDecimalNumber*)totalPrice 
{
	[self willAccessValueForKey:@"totalPrice"];
	
	double result = 0;
	
	// Somma le partRows
	if( [self partRows] )
	{
		for( MOPartRows* partRow in [self partRows] )
		{
			result += [[partRow totalPrice] doubleValue];
		}
	}
	
	// Somma i figli
	if( [self children] )
	{
		for( MOParts* part in [self children] )
		{
			result += [[part totalPrice] doubleValue];
		}
	}
	
	[self didAccessValueForKey:@"totalPrice"];
	
	return (NSDecimalNumber*)[NSNumber numberWithDouble:result];
}

+ (void) copyArray:(NSArray*)array toPasteboard:(NSPasteboard*)pboard
{
	NSMutableArray* oArray = [NSMutableArray array];
	NSManagedObjectContext* context;
	
	for( MOParts* part in array )
	{
		context = [part managedObjectContext];
		
		NSURL* objectURL = [[part objectID] URIRepresentation];
		[oArray addObject:objectURL];
	}
	
	NSData *data = [NSKeyedArchiver archivedDataWithRootObject:oArray]; 
	
	[pboard declareTypes:[NSArray arrayWithObject:@"OrionParts"]  owner:self]; 
	[pboard setData:data forType:@"OrionParts"];
	
	if( [AppController storeURLFromManagedObjectContext:context] )
	{
		data = [NSKeyedArchiver archivedDataWithRootObject:[AppController storeURLFromManagedObjectContext:context] ];
		[pboard setData:data forType:@"OrionSourceURL"];
	}
}

+ (NSArray*) partsFromPasteboard:(NSPasteboard*)pboard managedObjectContext:(NSManagedObjectContext*)context
{
	// Drag di prezzi
	NSData* rowData = [pboard dataForType:@"OrionParts"]; 
	NSMutableArray* resultArray = nil;
	NSData* rowDataSource = [pboard dataForType:@"OrionSourceURL"];
	NSURL* externalURL = nil;
	NSManagedObjectContext* moContext = context;
	
	if( rowData ) 
	{
		resultArray = [NSMutableArray array];
		
		if( rowDataSource ) // Sorgente esterna
		{
			externalURL = [NSKeyedUnarchiver unarchiveObjectWithData:rowDataSource];
			
			NSURL* internalURL = [AppController storeURLFromManagedObjectContext:context];
			
			// Determina se la sorgente è realmente esterna
			if( ![[externalURL absoluteString] isEqualToString:[internalURL absoluteString]] )
			{
				NSPersistentStoreCoordinator* coordinator = [AppController storeCoordinatorForURL:externalURL];
				
				moContext = [[[NSManagedObjectContext alloc] init] autorelease];
				[moContext setPersistentStoreCoordinator: coordinator];
			}
		}
		
		NSArray* array = [NSKeyedUnarchiver unarchiveObjectWithData:rowData]; 
		
		for( NSURL* url in array )
		{
			MOParts* part = nil;
			
			NSManagedObjectID* ID = [[moContext persistentStoreCoordinator] managedObjectIDForURIRepresentation:url];
			part = (MOParts*)[ moContext objectWithID:ID];
			
			if( part )
			{
				[resultArray addObject:part];
				
				if( rowDataSource )
				{
					[part setURI:[url absoluteString]];
				}
				
			}
		}
	}
	
	return resultArray;
}

@end

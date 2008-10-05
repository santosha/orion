#import "MOPrices.h"
#import "MOAnalisys.h"
#import "MOCategories.h"
#import "AppController.h"

@implementation MOPrices

- (void) awakeFromInsert
{
	/*
	if( ![self parent] )
	{
		[self willChangeValueForKey:@"orderNumber"];

		NSEntityDescription* ed = [NSEntityDescription entityForName:@"Prices" inManagedObjectContext:[self managedObjectContext]];
		NSFetchRequest* request = [[NSFetchRequest alloc] init];
		
		[request setEntity:ed];
		
		NSSortDescriptor* sd = [[NSSortDescriptor alloc] initWithKey:@"orderNumber" ascending:NO];
		
		[request setSortDescriptors:[NSArray arrayWithObject:sd]];
		
		NSError* error = nil;
		
		NSArray* rows = [[self managedObjectContext] executeFetchRequest:request error:&error];
		
		if( error )
			[NSApp presentError:error];
		
		int higher = 0;
		
		for( MOPrices* record in rows)
		{
			int n = [[record orderNumber] intValue ];
			
			if( n > higher )
				higher = n;
		}
		
		higher++;
		
		[self setOrderNumber:[NSNumber numberWithInt:higher]];
		
		[self didChangeValueForKey:@"orderNumber"];
	}
	 */
}

- (NSString*)longDescriptionText 
{
	[self willAccessValueForKey:@"longDescriptionText"];
	
	NSAttributedString* as = (NSAttributedString*)[self longDescription];
	
	[self didAccessValueForKey:@"longDescriptionText"];

	return [as string];
	
}

- (void)setLongDescriptionText:(NSString*)value_ 
{
	[self willAccessValueForKey:@"longDescription"];
	[self willChangeValueForKey:@"longDescriptionText"];
	NSAttributedString* as = [self primitiveValueForKey:@"longDescription"];
	[self setPrimitiveValue:[as string] forKey:@"longDescriptionText"];
	[self didChangeValueForKey:@"longDescriptionText"];
	[self didAccessValueForKey:@"longDescription"];
}

- (NSDecimalNumber*)price 
{
	[self willAccessValueForKey:@"price"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"price"];
	
	// Verifica se la categoria genitore ha una variazione
	if( [self category] )
	{
		int level = 0;
		MOCategories* cat = [self category];
		
		while (cat) 
		{
			if( [cat variation] )
			{
				if( level == 0 || (level>0 && [[cat flag1] intValue]==1) )
				{
					result = (NSDecimalNumber*) [NSNumber numberWithDouble:([result doubleValue] + [result doubleValue] * [[cat variation] doubleValue] / 100.0)];
					[self didAccessValueForKey:@"price"];
					return result;
				}
			}
			
			cat = [cat parent];
			level++;
		}
	}
	
	[self didAccessValueForKey:@"price"];
	return result;
}

static NSImage* analisysImage=nil;
static NSImage* elementImage=nil;

- (NSImage*) childrenImage
{
	if( [[self analisysRows] count] > 0 )
	{
		if( !analisysImage )
			analisysImage = [NSImage imageNamed:@"analisi-marker.png"];
		
		return analisysImage;
	}
	else
	{
		if( !elementImage )
			elementImage = [NSImage imageNamed:@"element-marker.png"];
		
		return elementImage;
	}
}

- (MOPrices*) duplicateWithManagedObjectContext:(NSManagedObjectContext*)context createCategory:(BOOL)createCategory
{
	// Verifica se l'articolo esiste già
	MOPrices* newPrice = nil;
	
	if( context != [self managedObjectContext] ) // Se copia esterna
	{
		NSFetchRequest* req = [[NSFetchRequest alloc] init];
		[req setEntity:[NSEntityDescription entityForName:@"Prices" inManagedObjectContext:context] ];
		[req setPredicate:[NSPredicate predicateWithFormat:@"URI = %@", [self URI]]];
		NSArray* objs = [context executeFetchRequest:req error:nil];
		[req release];
		
		if( [objs count] > 0 )
			return [objs objectAtIndex:0];
	}
					   
	newPrice = [MOPrices newInManagedObjectContext:context];
	[newPrice setCode:[self code]];
	[newPrice setBriefDescription:[self briefDescription]];
	[newPrice setLongDescription:[self longDescription]];
	[newPrice setPrice:[self price]];
	[newPrice setURI:[self URI]];
	[newPrice setUmCode:[self umCode]];
	
	if( context == [self managedObjectContext] ) // Stesso contesto, copia le relazioni
	{
		// Analisi
		for( MOAnalisys* anrow in [self analisysRows] )
		{
			[newPrice addAnalisysRowsObject:anrow];
		}
		
		if( createCategory )
			[newPrice setCategory:[self category]];
	}
	else 
	{
		// Categoria
		if( createCategory )
		{
			if( [self category] )
			{
				MOCategories* cat = [[self category] duplicateWithManagedObjectContext:context copyPrices:NO];
				[cat addPricesObject:newPrice];
			}
		}
		
		// Analisi
		for( MOAnalisys* anrow in [self analisysRows] )
		{
			MOAnalisys* newAnRow = [anrow duplicateWithManagedObjectContext:context];
			[newPrice addAnalisysRowsObject:newAnRow];
		}
	}
	
	return newPrice;
}

+ (MOPrices*) priceForURIRepresentation:(NSURL*)uri andStoreURL:(NSURL*)storeURL
{
	NSPersistentStoreCoordinator* coordinator = [AppController storeCoordinatorForURL:storeURL];

 	NSManagedObjectContext* context = [[[NSManagedObjectContext alloc] init] autorelease];
	[context setPersistentStoreCoordinator: coordinator];
	
	NSManagedObjectID* ID = [coordinator managedObjectIDForURIRepresentation:uri];
	MOPrices* price = (MOPrices*)[context  objectWithID:ID];

	return price;
}

+ (NSArray*) pricesFromPasteboard:(NSPasteboard*)pboard managedObjectContext:(NSManagedObjectContext*)context
{
	// Drag di prezzi
	NSData* rowData = [pboard dataForType:@"OrionPrices"]; 
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
			MOPrices* price = nil;
			
			NSManagedObjectID* ID = [[moContext persistentStoreCoordinator] managedObjectIDForURIRepresentation:url];
			price = (MOPrices*)[ moContext objectWithID:ID];
			
			if( price )
			{
				[resultArray addObject:price];
				
				if( rowDataSource )
				{
					[price setURI:[url absoluteString]];
				}
				
			}
		}
	}
	
	return resultArray;
}

+ (void) copyArray:(NSArray*)array toPasteboard:(NSPasteboard*)pboard
{
	NSMutableArray* oArray = [NSMutableArray array];
	NSManagedObjectContext* context;
	
	for( MOPrices* price in array )
	{
		context = [price managedObjectContext];
		
		NSURL* objectURL = [[price objectID] URIRepresentation];
		[oArray addObject:objectURL];
	}
	
	NSData *data = [NSKeyedArchiver archivedDataWithRootObject:oArray]; 
	
	[pboard declareTypes:[NSArray arrayWithObject:@"OrionPrices"]  owner:self]; 
	[pboard setData:data forType:@"OrionPrices"];
	
	if( [AppController storeURLFromManagedObjectContext:context] )
	{
		data = [NSKeyedArchiver archivedDataWithRootObject:[AppController storeURLFromManagedObjectContext:context] ];
		[pboard setData:data forType:@"OrionSourceURL"];
	}
}

+ (MOPrices*) findByCode:(NSString*)code context:(NSManagedObjectContext*)context
{
	NSFetchRequest* req = [[NSFetchRequest alloc] init];
	[req setEntity:[NSEntityDescription entityForName:@"Prices" inManagedObjectContext:context] ];
	[req setPredicate:[NSPredicate predicateWithFormat:@"code = %@",code]];
	NSArray* objs = [context executeFetchRequest:req error:nil];
	[req release];
	
	if( [objs count] > 0 )
		return [objs objectAtIndex:0];
	
	return nil;
}

+ (MOPrices*) findByImportCode:(NSString*)code context:(NSManagedObjectContext*)context
{
	NSFetchRequest* req = [[NSFetchRequest alloc] init];
	[req setEntity:[NSEntityDescription entityForName:@"Prices" inManagedObjectContext:context] ];
	[req setPredicate:[NSPredicate predicateWithFormat:@"importCode = %@",code]];
	NSArray* objs = [context executeFetchRequest:req error:nil];
	[req release];
	
	if( [objs count] > 0 )
		return [objs objectAtIndex:0];
	
	return nil;
}

- (NSString*) formatNumber:(int)n forDigits:(int)digits
{
	NSString* f;
	switch (digits) 
	{
		case 1:
			f = [NSString stringWithFormat:@"%.1d",n];
			break;
		case 2:
			f = [NSString stringWithFormat:@"%.2d",n];
			break;
		case 3:
			f = [NSString stringWithFormat:@"%.3d",n];
			break;
		case 4:
			f = [NSString stringWithFormat:@"%.4d",n];
			break;
		default:
			f = [NSString stringWithFormat:@"%.4d",n];
			break;
	}
	
	return f;
}

- (NSString*) nextNumberForCode:(NSString*)code insert:(BOOL)insert
{
	int digits = 0;
	
	NSString* resCode = @"";
	NSString* sep = @".";
	NSString* firstSegment = @"";
	int lastValue = 0;
	int partsCount = 0;
	BOOL nocode = ( !code || [code isEqualToString:@""] );
	if( nocode )
	{
		insert = NO;
	}
	else
	{		
		// Determina l'ultimo numero
		NSArray* parts = [code componentsSeparatedByString:sep];
		
		NSString* lastpart = [parts objectAtIndex:[parts count]-1];
		
		lastValue = [lastpart intValue];
		
		partsCount = [parts count];
		
		for( int i=0;i<partsCount;i++)
		{
			if( i < (partsCount-1) || insert )
			{
				firstSegment = [firstSegment stringByAppendingString:[parts objectAtIndex:i]];
				firstSegment = [firstSegment stringByAppendingString:sep];
			}
		}
	}
	
	if( [self category] ) // Se presente la categoria
	{
		MOCategories* cat = [self category];
		
		NSString* catcode = [cat code];
		if( [catcode isEqualToString:@""] )
			catcode = [[cat name] substringToIndex:1];
		
		catcode = [catcode stringByAppendingString:sep];
		
		int count = [[cat prices] count]-1; // Numero di prezzi in questa categoria
		
		switch ([[cat numberingMode] intValue] ) 
		{
			default: // Automatico
				// Codice della categoria + numero a 4 digits
				resCode = [catcode stringByAppendingString:[self formatNumber:lastValue+10 forDigits:4]]; 
				break;
				return @"";
				break;
		}
	}
	
	return resCode;
}

@end

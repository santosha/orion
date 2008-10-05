#import "MOCategories.h"
#import "MOPrices.h"

@implementation MOCategories

- (MOCategories*) duplicateWithManagedObjectContext:(NSManagedObjectContext*)context copyPrices:(BOOL)copyPrices
{
	MOCategories* newCat = nil;
	
	if( context != [self managedObjectContext] ) // Se copia esterna verifica l'esistenza
	{
		NSFetchRequest* req = [[NSFetchRequest alloc] init];
		[req setEntity:[NSEntityDescription entityForName:@"Categories" inManagedObjectContext:context] ];
		[req setPredicate:[NSPredicate predicateWithFormat:@"name = %@ AND code = %@ AND type = %@ ",[self name],[self code],[self type]]];
		
		NSError* error = nil;
		NSArray* objs = [context executeFetchRequest:req error:&error];
		if( error )
			[NSApp presentError:error];
		[req release];
		
		if( [objs count] > 0 )
			return [objs objectAtIndex:0];
	}
	
	newCat = [MOCategories newInManagedObjectContext:context];
	
	[newCat setName:[self name]];
	[newCat setCode:[self code]];
	[newCat setBriefDescription:[self briefDescription]];
	[newCat setLongDescription:[self longDescription]];
	[newCat setIcon:[self icon]];
	[newCat setType:[self type]];
	[newCat setMode:[self mode]];
	[newCat setURI:[self URI]];
	
	
	if( context == [self managedObjectContext] ) // Stesso contesto, copia le relazioni
	{
		// Prezzi
		for( MOPrices* price in [self prices] )
		{
			[newCat addPricesObject:price];
		}
	}
	else
	{
		// Prezzi
		if( copyPrices ) // Se specificato copia i prezzi
		{
			for( MOPrices* price in [self prices] )
			{
				// Duplica il prezzo
				MOPrices* price = [price duplicateWithManagedObjectContext:context createCategory:YES];
				[newCat addPricesObject:price];
			}
		}
		
		// Copia il genitore
		if( [self parent] )
		{
			MOCategories* parentCat = [[self parent] duplicateWithManagedObjectContext:context copyPrices:copyPrices];

			[newCat setParent:parentCat];
		}
	}
	
	return newCat;
}

- (NSImage*) image
{
	[self willAccessValueForKey:@"image"];
	[self willAccessValueForKey:@"icon"];
	
	NSImage* img = nil;
	
	if( ![self icon] ) // Immagine inesistente: la cerca nei genitori
	{
		MOCategories* parent = [self parent];
		
		while( parent )
		{
			if( [parent image] )
			{
				img = [[[NSImage alloc] initWithData:[parent icon]] autorelease];
				break;
			}
			
			parent = [self parent];
		}
	}
	else
	{
		img = [[[NSImage alloc] initWithData:[self icon]] autorelease];
	}
	
	if( !img )
	{
		switch( [[self type] intValue] )
		{
			case 0:
				if( ![self parent] )
					img = [NSImage imageNamed:@"EndSpanTag_32.png"];
				else
					img = [NSImage imageNamed:@"EndBlockTag_32.png"];
				break;
				
			case 1:
				if( ![self parent] )
					img = [NSImage imageNamed:@"EndSpanTag_32.png"];
				else
					img = [NSImage imageNamed:@"EndBlockTag_32.png"];
				break;
		}
	}
	
	if( [self parent] )
		[img setSize:NSMakeSize(15,15)];
	else
		[img setSize:NSMakeSize(20,20)];
	
	[self didAccessValueForKey:@"icon"];
	[self didAccessValueForKey:@"image"];
	
	return img;
}

+ (MOCategories*) findByCode:(NSString*)code context:(NSManagedObjectContext*)context
{
	NSFetchRequest* req = [[NSFetchRequest alloc] init];
	[req setEntity:[NSEntityDescription entityForName:@"Categories" inManagedObjectContext:context] ];
	[req setPredicate:[NSPredicate predicateWithFormat:@"code = %@",code]];
	NSArray* objs = [context executeFetchRequest:req error:nil];
	[req release];
	
	if( [objs count] > 0 )
		return [objs objectAtIndex:0];
	
	return nil;
}

@end

#import "MOAnalisys.h"
#import "MOPrices.h"

@implementation MOAnalisys

- (NSDecimalNumber*)totalPrice 
{
	[self willAccessValueForKey:@"totalPrice"];
	
	NSDecimalNumber *result;
	
	if( [self referencePrice] )
	{
		result =  [NSDecimalNumber numberWithDouble:[[self quantity] doubleValue] * [[[self referencePrice] price] doubleValue]];
	}
	else
	{
		result = nil;
	}
	
	[self didAccessValueForKey:@"totalPrice"];
	return result;
}

- (NSNumber*)quantity 
{
	NSNumber *result;
	
	[self willAccessValueForKey:@"quantity"];
	if( [self referencePrice] )
		result = [self primitiveValueForKey:@"quantity"];
	else
		result = nil;
	[self didAccessValueForKey:@"quantity"];
	
	return result;
}

// Riferimenti al prezzo
- (NSString*)code 
{
	[self willAccessValueForKey:@"code"];
	
	NSString *result;
	
	if( [self referencePrice] )
	{
		result = [[self referencePrice] code];
	}
	else
		result = nil;
	
	[self didAccessValueForKey:@"code"];
	
	return result;
}

- (void) setCode:(NSString*)code
{
	if( [self referencePrice] )
	{
		[self willChangeValueForKey:@"code"];
		[[self referencePrice] setCode:code];
		[self didChangeValueForKey:@"code"];
	}
}

- (NSString*)description 
{
	[self willAccessValueForKey:@"description"];
	
	NSString *result;
	
	if( [self referencePrice] )
	{
		result = [[self referencePrice] briefDescription];
	}
	else
		result = [self freeText];
	
	[self didAccessValueForKey:@"description"];
	
	return result;
}

- (void) setDescription:(NSString*)description
{
	[self willChangeValueForKey:@"description"];
	
	if( [self referencePrice] )
	{
		[[self referencePrice] setBriefDescription:description];
	}
	else
	{
		[self setFreeText:description];
	}
	
	[self didChangeValueForKey:@"description"];
}

- (NSString*)umCode 
{
	[self willAccessValueForKey:@"umCode"];
	
	NSString *result;
	
	if( [self referencePrice] )
	{
		result = [[self referencePrice] umCode];
	}
	else
		result = nil;
	
	[self didAccessValueForKey:@"umCode"];
	
	return result;
}

- (void) setUmCode:(NSString*)umCode
{
	if( [self referencePrice] )
	{
		[self willChangeValueForKey:@"umCode"];
		[[self referencePrice] setUmCode:umCode];
		[self didChangeValueForKey:@"umCode"];
	}
}


- (NSDecimalNumber*)unitPrice 
{
	[self willAccessValueForKey:@"unitPrice"];
	
	NSDecimalNumber *result;
	
	if( [self referencePrice] )
	{
		result = [[self referencePrice] price];
	}
	else
		result = nil;
	
	[self didAccessValueForKey:@"unitPrice"];
	
	return result;
}

- (void) setUnitPrice:(NSDecimalNumber*)unitPrice
{
	if( [self referencePrice] )
	{
		[self willChangeValueForKey:@"unitPrice"];
		[[self referencePrice] setPrice:unitPrice];
		[self didChangeValueForKey:@"unitPrice"];
	}
}

- (MOAnalisys*) duplicateWithManagedObjectContext:(NSManagedObjectContext*)context
{
	MOAnalisys* newAnalisys = [MOAnalisys newInManagedObjectContext:context];

	[newAnalisys setCode:[self code]];
	[newAnalisys setQuantity:[self quantity]];
	[newAnalisys setTotalPrice:[self totalPrice]];
	[newAnalisys setFreeText:[self freeText]];
	[newAnalisys setType:[self type]];
	[newAnalisys setOrderNumber:[self orderNumber]];
	
	if( context == [self managedObjectContext] ) // Stesso contesto, copia le relazioni
	{
		// Analisi
		if( [self referencePrice] )
		{
			[newAnalisys setReferencePrice:[self referencePrice]];
		}
	}
	else // TODO: Diversi contesti, copia anche gli oggetti relazionati
	{
		// Categoria
		
		// Prezzi di riferimento
		if( [self referencePrice] )
		{
			// Duplica il prezzo
			MOPrices* price = [[self referencePrice] duplicateWithManagedObjectContext:context createCategory:YES];
			[newAnalisys setReferencePrice:price];
		}
	}
	
	return newAnalisys;
}

@end

// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOSALPrices.m instead.

#import "_MOSALPrices.h"

@implementation _MOSALPrices

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"SALPrices" inManagedObjectContext:moc_];									 
}




- (NSDecimalNumber*)price {
	[self willAccessValueForKey:@"price"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"price"];
	[self didAccessValueForKey:@"price"];
	return result;
}

- (void)setPrice:(NSDecimalNumber*)value_ {
	[self willChangeValueForKey:@"price"];
	[self setPrimitiveValue:value_ forKey:@"price"];
	[self didChangeValueForKey:@"price"];
}






- (NSNumber*)status {
	[self willAccessValueForKey:@"status"];
	NSNumber *result = [self primitiveValueForKey:@"status"];
	[self didAccessValueForKey:@"status"];
	return result;
}

- (void)setStatus:(NSNumber*)value_ {
	[self willChangeValueForKey:@"status"];
	[self setPrimitiveValue:value_ forKey:@"status"];
	[self didChangeValueForKey:@"status"];
}



- (int)statusValue {
	NSNumber *result = [self status];
	return result ? [result intValue] : 0;
}

- (void)setStatusValue:(int)value_ {
	[self setStatus:[NSNumber numberWithInt:value_]];
}






- (NSDecimalNumber*)variation {
	[self willAccessValueForKey:@"variation"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"variation"];
	[self didAccessValueForKey:@"variation"];
	return result;
}

- (void)setVariation:(NSDecimalNumber*)value_ {
	[self willChangeValueForKey:@"variation"];
	[self setPrimitiveValue:value_ forKey:@"variation"];
	[self didChangeValueForKey:@"variation"];
}






	

- (MOPrices*)referencePrice {
	[self willAccessValueForKey:@"referencePrice"];
	MOPrices *result = [self primitiveValueForKey:@"referencePrice"];
	[self didAccessValueForKey:@"referencePrice"];
	return result;
}

- (void)setReferencePrice:(MOPrices*)value_ {
	[self willChangeValueForKey:@"referencePrice"];
	[self setPrimitiveValue:value_ forKey:@"referencePrice"];
	[self didChangeValueForKey:@"referencePrice"];
}

	

	

- (MOSAL*)sal {
	[self willAccessValueForKey:@"sal"];
	MOSAL *result = [self primitiveValueForKey:@"sal"];
	[self didAccessValueForKey:@"sal"];
	return result;
}

- (void)setSal:(MOSAL*)value_ {
	[self willChangeValueForKey:@"sal"];
	[self setPrimitiveValue:value_ forKey:@"sal"];
	[self didChangeValueForKey:@"sal"];
}

	

@end

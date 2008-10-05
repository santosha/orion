// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOSALMeasures.m instead.

#import "_MOSALMeasures.h"

@implementation _MOSALMeasures

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"SALMeasures" inManagedObjectContext:moc_];									 
}




- (NSDecimalNumber*)completitionPercent {
	[self willAccessValueForKey:@"completitionPercent"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"completitionPercent"];
	[self didAccessValueForKey:@"completitionPercent"];
	return result;
}

- (void)setCompletitionPercent:(NSDecimalNumber*)value_ {
	[self willChangeValueForKey:@"completitionPercent"];
	[self setPrimitiveValue:value_ forKey:@"completitionPercent"];
	[self didChangeValueForKey:@"completitionPercent"];
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






- (NSDate*)modifyDate {
	[self willAccessValueForKey:@"modifyDate"];
	NSDate *result = [self primitiveValueForKey:@"modifyDate"];
	[self didAccessValueForKey:@"modifyDate"];
	return result;
}

- (void)setModifyDate:(NSDate*)value_ {
	[self willChangeValueForKey:@"modifyDate"];
	[self setPrimitiveValue:value_ forKey:@"modifyDate"];
	[self didChangeValueForKey:@"modifyDate"];
}






- (NSDate*)createDate {
	[self willAccessValueForKey:@"createDate"];
	NSDate *result = [self primitiveValueForKey:@"createDate"];
	[self didAccessValueForKey:@"createDate"];
	return result;
}

- (void)setCreateDate:(NSDate*)value_ {
	[self willChangeValueForKey:@"createDate"];
	[self setPrimitiveValue:value_ forKey:@"createDate"];
	[self didChangeValueForKey:@"createDate"];
}






- (NSNumber*)completitionQuantity {
	[self willAccessValueForKey:@"completitionQuantity"];
	NSNumber *result = [self primitiveValueForKey:@"completitionQuantity"];
	[self didAccessValueForKey:@"completitionQuantity"];
	return result;
}

- (void)setCompletitionQuantity:(NSNumber*)value_ {
	[self willChangeValueForKey:@"completitionQuantity"];
	[self setPrimitiveValue:value_ forKey:@"completitionQuantity"];
	[self didChangeValueForKey:@"completitionQuantity"];
}



- (double)completitionQuantityValue {
	NSNumber *result = [self completitionQuantity];
	return result ? [result doubleValue] : 0;
}

- (void)setCompletitionQuantityValue:(double)value_ {
	[self setCompletitionQuantity:[NSNumber numberWithDouble:value_]];
}






	

- (MOSAL*)SAL {
	[self willAccessValueForKey:@"SAL"];
	MOSAL *result = [self primitiveValueForKey:@"SAL"];
	[self didAccessValueForKey:@"SAL"];
	return result;
}

- (void)setSAL:(MOSAL*)value_ {
	[self willChangeValueForKey:@"SAL"];
	[self setPrimitiveValue:value_ forKey:@"SAL"];
	[self didChangeValueForKey:@"SAL"];
}

	

@end

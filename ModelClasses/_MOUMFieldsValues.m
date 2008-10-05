// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOUMFieldsValues.m instead.

#import "_MOUMFieldsValues.h"

@implementation _MOUMFieldsValues

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"UMFieldsValues" inManagedObjectContext:moc_];									 
}




- (NSNumber*)value {
	[self willAccessValueForKey:@"value"];
	NSNumber *result = [self primitiveValueForKey:@"value"];
	[self didAccessValueForKey:@"value"];
	return result;
}

- (void)setValue:(NSNumber*)value_ {
	[self willChangeValueForKey:@"value"];
	[self setPrimitiveValue:value_ forKey:@"value"];
	[self didChangeValueForKey:@"value"];
}



- (double)valueValue {
	NSNumber *result = [self value];
	return result ? [result doubleValue] : 0;
}

- (void)setValueValue:(double)value_ {
	[self setValue:[NSNumber numberWithDouble:value_]];
}






- (NSString*)key {
	[self willAccessValueForKey:@"key"];
	NSString *result = [self primitiveValueForKey:@"key"];
	[self didAccessValueForKey:@"key"];
	return result;
}

- (void)setKey:(NSString*)value_ {
	[self willChangeValueForKey:@"key"];
	[self setPrimitiveValue:value_ forKey:@"key"];
	[self didChangeValueForKey:@"key"];
}






- (NSString*)formula {
	[self willAccessValueForKey:@"formula"];
	NSString *result = [self primitiveValueForKey:@"formula"];
	[self didAccessValueForKey:@"formula"];
	return result;
}

- (void)setFormula:(NSString*)value_ {
	[self willChangeValueForKey:@"formula"];
	[self setPrimitiveValue:value_ forKey:@"formula"];
	[self didChangeValueForKey:@"formula"];
}






	

- (MOAnalisys*)analisys {
	[self willAccessValueForKey:@"analisys"];
	MOAnalisys *result = [self primitiveValueForKey:@"analisys"];
	[self didAccessValueForKey:@"analisys"];
	return result;
}

- (void)setAnalisys:(MOAnalisys*)value_ {
	[self willChangeValueForKey:@"analisys"];
	[self setPrimitiveValue:value_ forKey:@"analisys"];
	[self didChangeValueForKey:@"analisys"];
}

	

	

- (MOMeasures*)measure {
	[self willAccessValueForKey:@"measure"];
	MOMeasures *result = [self primitiveValueForKey:@"measure"];
	[self didAccessValueForKey:@"measure"];
	return result;
}

- (void)setMeasure:(MOMeasures*)value_ {
	[self willChangeValueForKey:@"measure"];
	[self setPrimitiveValue:value_ forKey:@"measure"];
	[self didChangeValueForKey:@"measure"];
}

	

@end

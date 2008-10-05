// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOAnalisys.m instead.

#import "_MOAnalisys.h"

@implementation _MOAnalisys

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"Analisys" inManagedObjectContext:moc_];									 
}




- (NSNumber*)quantity {
	[self willAccessValueForKey:@"quantity"];
	NSNumber *result = [self primitiveValueForKey:@"quantity"];
	[self didAccessValueForKey:@"quantity"];
	return result;
}

- (void)setQuantity:(NSNumber*)value_ {
	[self willChangeValueForKey:@"quantity"];
	[self setPrimitiveValue:value_ forKey:@"quantity"];
	[self didChangeValueForKey:@"quantity"];
}



- (double)quantityValue {
	NSNumber *result = [self quantity];
	return result ? [result doubleValue] : 0;
}

- (void)setQuantityValue:(double)value_ {
	[self setQuantity:[NSNumber numberWithDouble:value_]];
}






- (NSString*)umCode {
	[self willAccessValueForKey:@"umCode"];
	NSString *result = [self primitiveValueForKey:@"umCode"];
	[self didAccessValueForKey:@"umCode"];
	return result;
}

- (void)setUmCode:(NSString*)value_ {
	[self willChangeValueForKey:@"umCode"];
	[self setPrimitiveValue:value_ forKey:@"umCode"];
	[self didChangeValueForKey:@"umCode"];
}






- (NSNumber*)flag1 {
	[self willAccessValueForKey:@"flag1"];
	NSNumber *result = [self primitiveValueForKey:@"flag1"];
	[self didAccessValueForKey:@"flag1"];
	return result;
}

- (void)setFlag1:(NSNumber*)value_ {
	[self willChangeValueForKey:@"flag1"];
	[self setPrimitiveValue:value_ forKey:@"flag1"];
	[self didChangeValueForKey:@"flag1"];
}



- (BOOL)flag1Value {
	NSNumber *result = [self flag1];
	return result ? [result boolValue] : 0;
}

- (void)setFlag1Value:(BOOL)value_ {
	[self setFlag1:[NSNumber numberWithBool:value_]];
}






- (NSString*)code {
	[self willAccessValueForKey:@"code"];
	NSString *result = [self primitiveValueForKey:@"code"];
	[self didAccessValueForKey:@"code"];
	return result;
}

- (void)setCode:(NSString*)value_ {
	[self willChangeValueForKey:@"code"];
	[self setPrimitiveValue:value_ forKey:@"code"];
	[self didChangeValueForKey:@"code"];
}






- (NSString*)briefDescription {
	[self willAccessValueForKey:@"briefDescription"];
	NSString *result = [self primitiveValueForKey:@"briefDescription"];
	[self didAccessValueForKey:@"briefDescription"];
	return result;
}

- (void)setBriefDescription:(NSString*)value_ {
	[self willChangeValueForKey:@"briefDescription"];
	[self setPrimitiveValue:value_ forKey:@"briefDescription"];
	[self didChangeValueForKey:@"briefDescription"];
}






- (NSDecimalNumber*)totalPrice {
	[self willAccessValueForKey:@"totalPrice"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"totalPrice"];
	[self didAccessValueForKey:@"totalPrice"];
	return result;
}

- (void)setTotalPrice:(NSDecimalNumber*)value_ {
	[self willChangeValueForKey:@"totalPrice"];
	[self setPrimitiveValue:value_ forKey:@"totalPrice"];
	[self didChangeValueForKey:@"totalPrice"];
}






- (NSString*)freeText {
	[self willAccessValueForKey:@"freeText"];
	NSString *result = [self primitiveValueForKey:@"freeText"];
	[self didAccessValueForKey:@"freeText"];
	return result;
}

- (void)setFreeText:(NSString*)value_ {
	[self willChangeValueForKey:@"freeText"];
	[self setPrimitiveValue:value_ forKey:@"freeText"];
	[self didChangeValueForKey:@"freeText"];
}






- (NSNumber*)flag2 {
	[self willAccessValueForKey:@"flag2"];
	NSNumber *result = [self primitiveValueForKey:@"flag2"];
	[self didAccessValueForKey:@"flag2"];
	return result;
}

- (void)setFlag2:(NSNumber*)value_ {
	[self willChangeValueForKey:@"flag2"];
	[self setPrimitiveValue:value_ forKey:@"flag2"];
	[self didChangeValueForKey:@"flag2"];
}



- (BOOL)flag2Value {
	NSNumber *result = [self flag2];
	return result ? [result boolValue] : 0;
}

- (void)setFlag2Value:(BOOL)value_ {
	[self setFlag2:[NSNumber numberWithBool:value_]];
}






- (NSNumber*)orderNumber {
	[self willAccessValueForKey:@"orderNumber"];
	NSNumber *result = [self primitiveValueForKey:@"orderNumber"];
	[self didAccessValueForKey:@"orderNumber"];
	return result;
}

- (void)setOrderNumber:(NSNumber*)value_ {
	[self willChangeValueForKey:@"orderNumber"];
	[self setPrimitiveValue:value_ forKey:@"orderNumber"];
	[self didChangeValueForKey:@"orderNumber"];
}



- (int)orderNumberValue {
	NSNumber *result = [self orderNumber];
	return result ? [result intValue] : 0;
}

- (void)setOrderNumberValue:(int)value_ {
	[self setOrderNumber:[NSNumber numberWithInt:value_]];
}






- (NSNumber*)type {
	[self willAccessValueForKey:@"type"];
	NSNumber *result = [self primitiveValueForKey:@"type"];
	[self didAccessValueForKey:@"type"];
	return result;
}

- (void)setType:(NSNumber*)value_ {
	[self willChangeValueForKey:@"type"];
	[self setPrimitiveValue:value_ forKey:@"type"];
	[self didChangeValueForKey:@"type"];
}



- (int)typeValue {
	NSNumber *result = [self type];
	return result ? [result intValue] : 0;
}

- (void)setTypeValue:(int)value_ {
	[self setType:[NSNumber numberWithInt:value_]];
}






- (NSDecimalNumber*)unitPrice {
	[self willAccessValueForKey:@"unitPrice"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"unitPrice"];
	[self didAccessValueForKey:@"unitPrice"];
	return result;
}

- (void)setUnitPrice:(NSDecimalNumber*)value_ {
	[self willChangeValueForKey:@"unitPrice"];
	[self setPrimitiveValue:value_ forKey:@"unitPrice"];
	[self didChangeValueForKey:@"unitPrice"];
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

	

	

- (MOPrices*)parentPrice {
	[self willAccessValueForKey:@"parentPrice"];
	MOPrices *result = [self primitiveValueForKey:@"parentPrice"];
	[self didAccessValueForKey:@"parentPrice"];
	return result;
}

- (void)setParentPrice:(MOPrices*)value_ {
	[self willChangeValueForKey:@"parentPrice"];
	[self setPrimitiveValue:value_ forKey:@"parentPrice"];
	[self didChangeValueForKey:@"parentPrice"];
}

	

	

- (NSSet*)umFieldsValues {
	[self willAccessValueForKey:@"umFieldsValues"];
	NSSet *result = [self primitiveValueForKey:@"umFieldsValues"];
	[self didAccessValueForKey:@"umFieldsValues"];
	return result;
}

- (void)setUmFieldsValues:(NSSet*)value_ {
	[self willChangeValueForKey:@"umFieldsValues"];
	[self setPrimitiveValue:value_ forKey:@"umFieldsValues"];
	[self didChangeValueForKey:@"umFieldsValues"];
}

- (void)addUmFieldsValues:(NSSet*)value_ {
	[self willChangeValueForKey:@"umFieldsValues" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"umFieldsValues"] unionSet:value_];
	[self didChangeValueForKey:@"umFieldsValues" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeUmFieldsValues:(NSSet*)value_ {
	[self willChangeValueForKey:@"umFieldsValues" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"umFieldsValues"] minusSet:value_];
	[self didChangeValueForKey:@"umFieldsValues" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addUmFieldsValuesObject:(MOUMFieldsValues*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"umFieldsValues" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"umFieldsValues"] addObject:value_];
	[self didChangeValueForKey:@"umFieldsValues" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeUmFieldsValuesObject:(MOUMFieldsValues*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"umFieldsValues" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"umFieldsValues"] removeObject:value_];
	[self didChangeValueForKey:@"umFieldsValues" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)umFieldsValuesSet {
	return [self mutableSetValueForKey:@"umFieldsValues"];
}
	

@end

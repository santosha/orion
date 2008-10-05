// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOMeasures.m instead.

#import "_MOMeasures.h"

@implementation _MOMeasures

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"Measures" inManagedObjectContext:moc_];									 
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






- (NSNumber*)partQuantity {
	[self willAccessValueForKey:@"partQuantity"];
	NSNumber *result = [self primitiveValueForKey:@"partQuantity"];
	[self didAccessValueForKey:@"partQuantity"];
	return result;
}

- (void)setPartQuantity:(NSNumber*)value_ {
	[self willChangeValueForKey:@"partQuantity"];
	[self setPrimitiveValue:value_ forKey:@"partQuantity"];
	[self didChangeValueForKey:@"partQuantity"];
}



- (int)partQuantityValue {
	NSNumber *result = [self partQuantity];
	return result ? [result intValue] : 0;
}

- (void)setPartQuantityValue:(int)value_ {
	[self setPartQuantity:[NSNumber numberWithInt:value_]];
}






- (NSNumber*)mode {
	[self willAccessValueForKey:@"mode"];
	NSNumber *result = [self primitiveValueForKey:@"mode"];
	[self didAccessValueForKey:@"mode"];
	return result;
}

- (void)setMode:(NSNumber*)value_ {
	[self willChangeValueForKey:@"mode"];
	[self setPrimitiveValue:value_ forKey:@"mode"];
	[self didChangeValueForKey:@"mode"];
}



- (int)modeValue {
	NSNumber *result = [self mode];
	return result ? [result intValue] : 0;
}

- (void)setModeValue:(int)value_ {
	[self setMode:[NSNumber numberWithInt:value_]];
}






- (NSData*)media {
	[self willAccessValueForKey:@"media"];
	NSData *result = [self primitiveValueForKey:@"media"];
	[self didAccessValueForKey:@"media"];
	return result;
}

- (void)setMedia:(NSData*)value_ {
	[self willChangeValueForKey:@"media"];
	[self setPrimitiveValue:value_ forKey:@"media"];
	[self didChangeValueForKey:@"media"];
}






- (NSString*)URI {
	[self willAccessValueForKey:@"URI"];
	NSString *result = [self primitiveValueForKey:@"URI"];
	[self didAccessValueForKey:@"URI"];
	return result;
}

- (void)setURI:(NSString*)value_ {
	[self willChangeValueForKey:@"URI"];
	[self setPrimitiveValue:value_ forKey:@"URI"];
	[self didChangeValueForKey:@"URI"];
}






- (NSString*)partQuantityFormula {
	[self willAccessValueForKey:@"partQuantityFormula"];
	NSString *result = [self primitiveValueForKey:@"partQuantityFormula"];
	[self didAccessValueForKey:@"partQuantityFormula"];
	return result;
}

- (void)setPartQuantityFormula:(NSString*)value_ {
	[self willChangeValueForKey:@"partQuantityFormula"];
	[self setPrimitiveValue:value_ forKey:@"partQuantityFormula"];
	[self didChangeValueForKey:@"partQuantityFormula"];
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






- (NSString*)comment {
	[self willAccessValueForKey:@"comment"];
	NSString *result = [self primitiveValueForKey:@"comment"];
	[self didAccessValueForKey:@"comment"];
	return result;
}

- (void)setComment:(NSString*)value_ {
	[self willChangeValueForKey:@"comment"];
	[self setPrimitiveValue:value_ forKey:@"comment"];
	[self didChangeValueForKey:@"comment"];
}






- (NSString*)quantityFormula {
	[self willAccessValueForKey:@"quantityFormula"];
	NSString *result = [self primitiveValueForKey:@"quantityFormula"];
	[self didAccessValueForKey:@"quantityFormula"];
	return result;
}

- (void)setQuantityFormula:(NSString*)value_ {
	[self willChangeValueForKey:@"quantityFormula"];
	[self setPrimitiveValue:value_ forKey:@"quantityFormula"];
	[self didChangeValueForKey:@"quantityFormula"];
}






	

- (MOPartRows*)partRow {
	[self willAccessValueForKey:@"partRow"];
	MOPartRows *result = [self primitiveValueForKey:@"partRow"];
	[self didAccessValueForKey:@"partRow"];
	return result;
}

- (void)setPartRow:(MOPartRows*)value_ {
	[self willChangeValueForKey:@"partRow"];
	[self setPrimitiveValue:value_ forKey:@"partRow"];
	[self didChangeValueForKey:@"partRow"];
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

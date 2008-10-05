// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOPartRows.m instead.

#import "_MOPartRows.h"

@implementation _MOPartRows

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"PartRows" inManagedObjectContext:moc_];									 
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



- (double)partQuantityValue {
	NSNumber *result = [self partQuantity];
	return result ? [result doubleValue] : 0;
}

- (void)setPartQuantityValue:(double)value_ {
	[self setPartQuantity:[NSNumber numberWithDouble:value_]];
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






	

- (NSSet*)measures {
	[self willAccessValueForKey:@"measures"];
	NSSet *result = [self primitiveValueForKey:@"measures"];
	[self didAccessValueForKey:@"measures"];
	return result;
}

- (void)setMeasures:(NSSet*)value_ {
	[self willChangeValueForKey:@"measures"];
	[self setPrimitiveValue:value_ forKey:@"measures"];
	[self didChangeValueForKey:@"measures"];
}

- (void)addMeasures:(NSSet*)value_ {
	[self willChangeValueForKey:@"measures" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"measures"] unionSet:value_];
	[self didChangeValueForKey:@"measures" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeMeasures:(NSSet*)value_ {
	[self willChangeValueForKey:@"measures" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"measures"] minusSet:value_];
	[self didChangeValueForKey:@"measures" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addMeasuresObject:(MOMeasures*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"measures" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"measures"] addObject:value_];
	[self didChangeValueForKey:@"measures" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeMeasuresObject:(MOMeasures*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"measures" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"measures"] removeObject:value_];
	[self didChangeValueForKey:@"measures" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)measuresSet {
	return [self mutableSetValueForKey:@"measures"];
}
	

	

- (MOParts*)part {
	[self willAccessValueForKey:@"part"];
	MOParts *result = [self primitiveValueForKey:@"part"];
	[self didAccessValueForKey:@"part"];
	return result;
}

- (void)setPart:(MOParts*)value_ {
	[self willChangeValueForKey:@"part"];
	[self setPrimitiveValue:value_ forKey:@"part"];
	[self didChangeValueForKey:@"part"];
}

	

	

- (MOPrices*)price {
	[self willAccessValueForKey:@"price"];
	MOPrices *result = [self primitiveValueForKey:@"price"];
	[self didAccessValueForKey:@"price"];
	return result;
}

- (void)setPrice:(MOPrices*)value_ {
	[self willChangeValueForKey:@"price"];
	[self setPrimitiveValue:value_ forKey:@"price"];
	[self didChangeValueForKey:@"price"];
}

	

@end

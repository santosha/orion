// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOCategories.m instead.

#import "_MOCategories.h"

@implementation _MOCategories

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"Categories" inManagedObjectContext:moc_];									 
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






- (NSNumber*)numberingMode {
	[self willAccessValueForKey:@"numberingMode"];
	NSNumber *result = [self primitiveValueForKey:@"numberingMode"];
	[self didAccessValueForKey:@"numberingMode"];
	return result;
}

- (void)setNumberingMode:(NSNumber*)value_ {
	[self willChangeValueForKey:@"numberingMode"];
	[self setPrimitiveValue:value_ forKey:@"numberingMode"];
	[self didChangeValueForKey:@"numberingMode"];
}



- (int)numberingModeValue {
	NSNumber *result = [self numberingMode];
	return result ? [result intValue] : 0;
}

- (void)setNumberingModeValue:(int)value_ {
	[self setNumberingMode:[NSNumber numberWithInt:value_]];
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






- (NSString*)name {
	[self willAccessValueForKey:@"name"];
	NSString *result = [self primitiveValueForKey:@"name"];
	[self didAccessValueForKey:@"name"];
	return result;
}

- (void)setName:(NSString*)value_ {
	[self willChangeValueForKey:@"name"];
	[self setPrimitiveValue:value_ forKey:@"name"];
	[self didChangeValueForKey:@"name"];
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






- (NSString*)longDescription {
	[self willAccessValueForKey:@"longDescription"];
	NSString *result = [self primitiveValueForKey:@"longDescription"];
	[self didAccessValueForKey:@"longDescription"];
	return result;
}

- (void)setLongDescription:(NSString*)value_ {
	[self willChangeValueForKey:@"longDescription"];
	[self setPrimitiveValue:value_ forKey:@"longDescription"];
	[self didChangeValueForKey:@"longDescription"];
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






- (NSDecimalNumber*)manworkIncidence {
	[self willAccessValueForKey:@"manworkIncidence"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"manworkIncidence"];
	[self didAccessValueForKey:@"manworkIncidence"];
	return result;
}

- (void)setManworkIncidence:(NSDecimalNumber*)value_ {
	[self willChangeValueForKey:@"manworkIncidence"];
	[self setPrimitiveValue:value_ forKey:@"manworkIncidence"];
	[self didChangeValueForKey:@"manworkIncidence"];
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






- (NSData*)icon {
	[self willAccessValueForKey:@"icon"];
	NSData *result = [self primitiveValueForKey:@"icon"];
	[self didAccessValueForKey:@"icon"];
	return result;
}

- (void)setIcon:(NSData*)value_ {
	[self willChangeValueForKey:@"icon"];
	[self setPrimitiveValue:value_ forKey:@"icon"];
	[self didChangeValueForKey:@"icon"];
}






	

- (MOCategories*)parent {
	[self willAccessValueForKey:@"parent"];
	MOCategories *result = [self primitiveValueForKey:@"parent"];
	[self didAccessValueForKey:@"parent"];
	return result;
}

- (void)setParent:(MOCategories*)value_ {
	[self willChangeValueForKey:@"parent"];
	[self setPrimitiveValue:value_ forKey:@"parent"];
	[self didChangeValueForKey:@"parent"];
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
	
- (void)addMeasuresObject:(MOParts*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"measures" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"measures"] addObject:value_];
	[self didChangeValueForKey:@"measures" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeMeasuresObject:(MOParts*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"measures" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"measures"] removeObject:value_];
	[self didChangeValueForKey:@"measures" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)measuresSet {
	return [self mutableSetValueForKey:@"measures"];
}
	

	

- (NSSet*)prices {
	[self willAccessValueForKey:@"prices"];
	NSSet *result = [self primitiveValueForKey:@"prices"];
	[self didAccessValueForKey:@"prices"];
	return result;
}

- (void)setPrices:(NSSet*)value_ {
	[self willChangeValueForKey:@"prices"];
	[self setPrimitiveValue:value_ forKey:@"prices"];
	[self didChangeValueForKey:@"prices"];
}

- (void)addPrices:(NSSet*)value_ {
	[self willChangeValueForKey:@"prices" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"prices"] unionSet:value_];
	[self didChangeValueForKey:@"prices" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removePrices:(NSSet*)value_ {
	[self willChangeValueForKey:@"prices" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"prices"] minusSet:value_];
	[self didChangeValueForKey:@"prices" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addPricesObject:(MOPrices*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"prices" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"prices"] addObject:value_];
	[self didChangeValueForKey:@"prices" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removePricesObject:(MOPrices*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"prices" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"prices"] removeObject:value_];
	[self didChangeValueForKey:@"prices" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)pricesSet {
	return [self mutableSetValueForKey:@"prices"];
}
	

	

- (NSSet*)children {
	[self willAccessValueForKey:@"children"];
	NSSet *result = [self primitiveValueForKey:@"children"];
	[self didAccessValueForKey:@"children"];
	return result;
}

- (void)setChildren:(NSSet*)value_ {
	[self willChangeValueForKey:@"children"];
	[self setPrimitiveValue:value_ forKey:@"children"];
	[self didChangeValueForKey:@"children"];
}

- (void)addChildren:(NSSet*)value_ {
	[self willChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"children"] unionSet:value_];
	[self didChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeChildren:(NSSet*)value_ {
	[self willChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"children"] minusSet:value_];
	[self didChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addChildrenObject:(MOCategories*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"children"] addObject:value_];
	[self didChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeChildrenObject:(MOCategories*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"children"] removeObject:value_];
	[self didChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)childrenSet {
	return [self mutableSetValueForKey:@"children"];
}
	

@end

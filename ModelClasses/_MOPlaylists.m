// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOPlaylists.m instead.

#import "_MOPlaylists.h"

@implementation _MOPlaylists

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"Playlists" inManagedObjectContext:moc_];									 
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






- (NSObject*)predicate {
	[self willAccessValueForKey:@"predicate"];
	NSObject *result = [self primitiveValueForKey:@"predicate"];
	[self didAccessValueForKey:@"predicate"];
	return result;
}

- (void)setPredicate:(NSObject*)value_ {
	[self willChangeValueForKey:@"predicate"];
	[self setPrimitiveValue:value_ forKey:@"predicate"];
	[self didChangeValueForKey:@"predicate"];
}






	

- (MOPlaylists*)parent {
	[self willAccessValueForKey:@"parent"];
	MOPlaylists *result = [self primitiveValueForKey:@"parent"];
	[self didAccessValueForKey:@"parent"];
	return result;
}

- (void)setParent:(MOPlaylists*)value_ {
	[self willChangeValueForKey:@"parent"];
	[self setPrimitiveValue:value_ forKey:@"parent"];
	[self didChangeValueForKey:@"parent"];
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
	
- (void)addChildrenObject:(MOPlaylists*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"children"] addObject:value_];
	[self didChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeChildrenObject:(MOPlaylists*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"children"] removeObject:value_];
	[self didChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)childrenSet {
	return [self mutableSetValueForKey:@"children"];
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
	

	

- (NSSet*)parts {
	[self willAccessValueForKey:@"parts"];
	NSSet *result = [self primitiveValueForKey:@"parts"];
	[self didAccessValueForKey:@"parts"];
	return result;
}

- (void)setParts:(NSSet*)value_ {
	[self willChangeValueForKey:@"parts"];
	[self setPrimitiveValue:value_ forKey:@"parts"];
	[self didChangeValueForKey:@"parts"];
}

- (void)addParts:(NSSet*)value_ {
	[self willChangeValueForKey:@"parts" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"parts"] unionSet:value_];
	[self didChangeValueForKey:@"parts" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeParts:(NSSet*)value_ {
	[self willChangeValueForKey:@"parts" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"parts"] minusSet:value_];
	[self didChangeValueForKey:@"parts" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addPartsObject:(MOParts*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"parts" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"parts"] addObject:value_];
	[self didChangeValueForKey:@"parts" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removePartsObject:(MOParts*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"parts" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"parts"] removeObject:value_];
	[self didChangeValueForKey:@"parts" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)partsSet {
	return [self mutableSetValueForKey:@"parts"];
}
	

@end

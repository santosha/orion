// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOSAL.m instead.

#import "_MOSAL.h"

@implementation _MOSAL

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"SAL" inManagedObjectContext:moc_];									 
}




- (NSDate*)estimatedEndDate {
	[self willAccessValueForKey:@"estimatedEndDate"];
	NSDate *result = [self primitiveValueForKey:@"estimatedEndDate"];
	[self didAccessValueForKey:@"estimatedEndDate"];
	return result;
}

- (void)setEstimatedEndDate:(NSDate*)value_ {
	[self willChangeValueForKey:@"estimatedEndDate"];
	[self setPrimitiveValue:value_ forKey:@"estimatedEndDate"];
	[self didChangeValueForKey:@"estimatedEndDate"];
}






- (NSNumber*)number {
	[self willAccessValueForKey:@"number"];
	NSNumber *result = [self primitiveValueForKey:@"number"];
	[self didAccessValueForKey:@"number"];
	return result;
}

- (void)setNumber:(NSNumber*)value_ {
	[self willChangeValueForKey:@"number"];
	[self setPrimitiveValue:value_ forKey:@"number"];
	[self didChangeValueForKey:@"number"];
}



- (int)numberValue {
	NSNumber *result = [self number];
	return result ? [result intValue] : 0;
}

- (void)setNumberValue:(int)value_ {
	[self setNumber:[NSNumber numberWithInt:value_]];
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






- (NSDate*)startDate {
	[self willAccessValueForKey:@"startDate"];
	NSDate *result = [self primitiveValueForKey:@"startDate"];
	[self didAccessValueForKey:@"startDate"];
	return result;
}

- (void)setStartDate:(NSDate*)value_ {
	[self willChangeValueForKey:@"startDate"];
	[self setPrimitiveValue:value_ forKey:@"startDate"];
	[self didChangeValueForKey:@"startDate"];
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






- (NSDate*)acquireDate {
	[self willAccessValueForKey:@"acquireDate"];
	NSDate *result = [self primitiveValueForKey:@"acquireDate"];
	[self didAccessValueForKey:@"acquireDate"];
	return result;
}

- (void)setAcquireDate:(NSDate*)value_ {
	[self willChangeValueForKey:@"acquireDate"];
	[self setPrimitiveValue:value_ forKey:@"acquireDate"];
	[self didChangeValueForKey:@"acquireDate"];
}






	

- (MOProjects*)project {
	[self willAccessValueForKey:@"project"];
	MOProjects *result = [self primitiveValueForKey:@"project"];
	[self didAccessValueForKey:@"project"];
	return result;
}

- (void)setProject:(MOProjects*)value_ {
	[self willChangeValueForKey:@"project"];
	[self setPrimitiveValue:value_ forKey:@"project"];
	[self didChangeValueForKey:@"project"];
}

	

	

- (NSSet*)salPrices {
	[self willAccessValueForKey:@"salPrices"];
	NSSet *result = [self primitiveValueForKey:@"salPrices"];
	[self didAccessValueForKey:@"salPrices"];
	return result;
}

- (void)setSalPrices:(NSSet*)value_ {
	[self willChangeValueForKey:@"salPrices"];
	[self setPrimitiveValue:value_ forKey:@"salPrices"];
	[self didChangeValueForKey:@"salPrices"];
}

- (void)addSalPrices:(NSSet*)value_ {
	[self willChangeValueForKey:@"salPrices" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"salPrices"] unionSet:value_];
	[self didChangeValueForKey:@"salPrices" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeSalPrices:(NSSet*)value_ {
	[self willChangeValueForKey:@"salPrices" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"salPrices"] minusSet:value_];
	[self didChangeValueForKey:@"salPrices" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addSalPricesObject:(MOSALPrices*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"salPrices" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"salPrices"] addObject:value_];
	[self didChangeValueForKey:@"salPrices" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeSalPricesObject:(MOSALPrices*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"salPrices" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"salPrices"] removeObject:value_];
	[self didChangeValueForKey:@"salPrices" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)salPricesSet {
	return [self mutableSetValueForKey:@"salPrices"];
}
	

	

- (NSSet*)locations {
	[self willAccessValueForKey:@"locations"];
	NSSet *result = [self primitiveValueForKey:@"locations"];
	[self didAccessValueForKey:@"locations"];
	return result;
}

- (void)setLocations:(NSSet*)value_ {
	[self willChangeValueForKey:@"locations"];
	[self setPrimitiveValue:value_ forKey:@"locations"];
	[self didChangeValueForKey:@"locations"];
}

- (void)addLocations:(NSSet*)value_ {
	[self willChangeValueForKey:@"locations" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"locations"] unionSet:value_];
	[self didChangeValueForKey:@"locations" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeLocations:(NSSet*)value_ {
	[self willChangeValueForKey:@"locations" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"locations"] minusSet:value_];
	[self didChangeValueForKey:@"locations" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addLocationsObject:(MOLocations*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"locations" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"locations"] addObject:value_];
	[self didChangeValueForKey:@"locations" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeLocationsObject:(MOLocations*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"locations" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"locations"] removeObject:value_];
	[self didChangeValueForKey:@"locations" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)locationsSet {
	return [self mutableSetValueForKey:@"locations"];
}
	

	

- (NSSet*)SALMeasures {
	[self willAccessValueForKey:@"SALMeasures"];
	NSSet *result = [self primitiveValueForKey:@"SALMeasures"];
	[self didAccessValueForKey:@"SALMeasures"];
	return result;
}

- (void)setSALMeasures:(NSSet*)value_ {
	[self willChangeValueForKey:@"SALMeasures"];
	[self setPrimitiveValue:value_ forKey:@"SALMeasures"];
	[self didChangeValueForKey:@"SALMeasures"];
}

- (void)addSALMeasures:(NSSet*)value_ {
	[self willChangeValueForKey:@"SALMeasures" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"SALMeasures"] unionSet:value_];
	[self didChangeValueForKey:@"SALMeasures" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeSALMeasures:(NSSet*)value_ {
	[self willChangeValueForKey:@"SALMeasures" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"SALMeasures"] minusSet:value_];
	[self didChangeValueForKey:@"SALMeasures" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addSALMeasuresObject:(MOSALMeasures*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"SALMeasures" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"SALMeasures"] addObject:value_];
	[self didChangeValueForKey:@"SALMeasures" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeSALMeasuresObject:(MOSALMeasures*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"SALMeasures" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"SALMeasures"] removeObject:value_];
	[self didChangeValueForKey:@"SALMeasures" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)SALMeasuresSet {
	return [self mutableSetValueForKey:@"SALMeasures"];
}
	

@end

// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOProjects.m instead.

#import "_MOProjects.h"

@implementation _MOProjects

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"Projects" inManagedObjectContext:moc_];									 
}




- (NSString*)longDescriptionText {
	[self willAccessValueForKey:@"longDescriptionText"];
	NSString *result = [self primitiveValueForKey:@"longDescriptionText"];
	[self didAccessValueForKey:@"longDescriptionText"];
	return result;
}

- (void)setLongDescriptionText:(NSString*)value_ {
	[self willChangeValueForKey:@"longDescriptionText"];
	[self setPrimitiveValue:value_ forKey:@"longDescriptionText"];
	[self didChangeValueForKey:@"longDescriptionText"];
}






- (NSString*)workDescription {
	[self willAccessValueForKey:@"workDescription"];
	NSString *result = [self primitiveValueForKey:@"workDescription"];
	[self didAccessValueForKey:@"workDescription"];
	return result;
}

- (void)setWorkDescription:(NSString*)value_ {
	[self willChangeValueForKey:@"workDescription"];
	[self setPrimitiveValue:value_ forKey:@"workDescription"];
	[self didChangeValueForKey:@"workDescription"];
}






- (NSString*)city {
	[self willAccessValueForKey:@"city"];
	NSString *result = [self primitiveValueForKey:@"city"];
	[self didAccessValueForKey:@"city"];
	return result;
}

- (void)setCity:(NSString*)value_ {
	[self willChangeValueForKey:@"city"];
	[self setPrimitiveValue:value_ forKey:@"city"];
	[self didChangeValueForKey:@"city"];
}






- (NSString*)state {
	[self willAccessValueForKey:@"state"];
	NSString *result = [self primitiveValueForKey:@"state"];
	[self didAccessValueForKey:@"state"];
	return result;
}

- (void)setState:(NSString*)value_ {
	[self willChangeValueForKey:@"state"];
	[self setPrimitiveValue:value_ forKey:@"state"];
	[self didChangeValueForKey:@"state"];
}






- (NSString*)company {
	[self willAccessValueForKey:@"company"];
	NSString *result = [self primitiveValueForKey:@"company"];
	[self didAccessValueForKey:@"company"];
	return result;
}

- (void)setCompany:(NSString*)value_ {
	[self willChangeValueForKey:@"company"];
	[self setPrimitiveValue:value_ forKey:@"company"];
	[self didChangeValueForKey:@"company"];
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






- (NSObject*)longDescription {
	[self willAccessValueForKey:@"longDescription"];
	NSObject *result = [self primitiveValueForKey:@"longDescription"];
	[self didAccessValueForKey:@"longDescription"];
	return result;
}

- (void)setLongDescription:(NSObject*)value_ {
	[self willChangeValueForKey:@"longDescription"];
	[self setPrimitiveValue:value_ forKey:@"longDescription"];
	[self didChangeValueForKey:@"longDescription"];
}






- (NSString*)customer {
	[self willAccessValueForKey:@"customer"];
	NSString *result = [self primitiveValueForKey:@"customer"];
	[self didAccessValueForKey:@"customer"];
	return result;
}

- (void)setCustomer:(NSString*)value_ {
	[self willChangeValueForKey:@"customer"];
	[self setPrimitiveValue:value_ forKey:@"customer"];
	[self didChangeValueForKey:@"customer"];
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






- (NSString*)locality {
	[self willAccessValueForKey:@"locality"];
	NSString *result = [self primitiveValueForKey:@"locality"];
	[self didAccessValueForKey:@"locality"];
	return result;
}

- (void)setLocality:(NSString*)value_ {
	[self willChangeValueForKey:@"locality"];
	[self setPrimitiveValue:value_ forKey:@"locality"];
	[self didChangeValueForKey:@"locality"];
}






- (NSString*)engineer {
	[self willAccessValueForKey:@"engineer"];
	NSString *result = [self primitiveValueForKey:@"engineer"];
	[self didAccessValueForKey:@"engineer"];
	return result;
}

- (void)setEngineer:(NSString*)value_ {
	[self willChangeValueForKey:@"engineer"];
	[self setPrimitiveValue:value_ forKey:@"engineer"];
	[self didChangeValueForKey:@"engineer"];
}






	

- (NSSet*)sals {
	[self willAccessValueForKey:@"sals"];
	NSSet *result = [self primitiveValueForKey:@"sals"];
	[self didAccessValueForKey:@"sals"];
	return result;
}

- (void)setSals:(NSSet*)value_ {
	[self willChangeValueForKey:@"sals"];
	[self setPrimitiveValue:value_ forKey:@"sals"];
	[self didChangeValueForKey:@"sals"];
}

- (void)addSals:(NSSet*)value_ {
	[self willChangeValueForKey:@"sals" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"sals"] unionSet:value_];
	[self didChangeValueForKey:@"sals" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeSals:(NSSet*)value_ {
	[self willChangeValueForKey:@"sals" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"sals"] minusSet:value_];
	[self didChangeValueForKey:@"sals" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addSalsObject:(MOSAL*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"sals" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"sals"] addObject:value_];
	[self didChangeValueForKey:@"sals" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeSalsObject:(MOSAL*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"sals" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"sals"] removeObject:value_];
	[self didChangeValueForKey:@"sals" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)salsSet {
	return [self mutableSetValueForKey:@"sals"];
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
	

	

- (MOLocations*)location {
	[self willAccessValueForKey:@"location"];
	MOLocations *result = [self primitiveValueForKey:@"location"];
	[self didAccessValueForKey:@"location"];
	return result;
}

- (void)setLocation:(MOLocations*)value_ {
	[self willChangeValueForKey:@"location"];
	[self setPrimitiveValue:value_ forKey:@"location"];
	[self didChangeValueForKey:@"location"];
}

	

@end

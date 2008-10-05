// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOLocations.m instead.

#import "_MOLocations.h"

@implementation _MOLocations

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"Locations" inManagedObjectContext:moc_];									 
}




- (NSString*)address {
	[self willAccessValueForKey:@"address"];
	NSString *result = [self primitiveValueForKey:@"address"];
	[self didAccessValueForKey:@"address"];
	return result;
}

- (void)setAddress:(NSString*)value_ {
	[self willChangeValueForKey:@"address"];
	[self setPrimitiveValue:value_ forKey:@"address"];
	[self didChangeValueForKey:@"address"];
}






- (NSObject*)media {
	[self willAccessValueForKey:@"media"];
	NSObject *result = [self primitiveValueForKey:@"media"];
	[self didAccessValueForKey:@"media"];
	return result;
}

- (void)setMedia:(NSObject*)value_ {
	[self willChangeValueForKey:@"media"];
	[self setPrimitiveValue:value_ forKey:@"media"];
	[self didChangeValueForKey:@"media"];
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






- (NSNumber*)north {
	[self willAccessValueForKey:@"north"];
	NSNumber *result = [self primitiveValueForKey:@"north"];
	[self didAccessValueForKey:@"north"];
	return result;
}

- (void)setNorth:(NSNumber*)value_ {
	[self willChangeValueForKey:@"north"];
	[self setPrimitiveValue:value_ forKey:@"north"];
	[self didChangeValueForKey:@"north"];
}



- (double)northValue {
	NSNumber *result = [self north];
	return result ? [result doubleValue] : 0;
}

- (void)setNorthValue:(double)value_ {
	[self setNorth:[NSNumber numberWithDouble:value_]];
}






- (NSNumber*)alt {
	[self willAccessValueForKey:@"alt"];
	NSNumber *result = [self primitiveValueForKey:@"alt"];
	[self didAccessValueForKey:@"alt"];
	return result;
}

- (void)setAlt:(NSNumber*)value_ {
	[self willChangeValueForKey:@"alt"];
	[self setPrimitiveValue:value_ forKey:@"alt"];
	[self didChangeValueForKey:@"alt"];
}



- (double)altValue {
	NSNumber *result = [self alt];
	return result ? [result doubleValue] : 0;
}

- (void)setAltValue:(double)value_ {
	[self setAlt:[NSNumber numberWithDouble:value_]];
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






- (NSNumber*)east {
	[self willAccessValueForKey:@"east"];
	NSNumber *result = [self primitiveValueForKey:@"east"];
	[self didAccessValueForKey:@"east"];
	return result;
}

- (void)setEast:(NSNumber*)value_ {
	[self willChangeValueForKey:@"east"];
	[self setPrimitiveValue:value_ forKey:@"east"];
	[self didChangeValueForKey:@"east"];
}



- (double)eastValue {
	NSNumber *result = [self east];
	return result ? [result doubleValue] : 0;
}

- (void)setEastValue:(double)value_ {
	[self setEast:[NSNumber numberWithDouble:value_]];
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

	

@end

// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOParts.m instead.

#import "_MOParts.h"

@implementation _MOParts

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"Parts" inManagedObjectContext:moc_];									 
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






- (NSNumber*)duration {
	[self willAccessValueForKey:@"duration"];
	NSNumber *result = [self primitiveValueForKey:@"duration"];
	[self didAccessValueForKey:@"duration"];
	return result;
}

- (void)setDuration:(NSNumber*)value_ {
	[self willChangeValueForKey:@"duration"];
	[self setPrimitiveValue:value_ forKey:@"duration"];
	[self didChangeValueForKey:@"duration"];
}



- (double)durationValue {
	NSNumber *result = [self duration];
	return result ? [result doubleValue] : 0;
}

- (void)setDurationValue:(double)value_ {
	[self setDuration:[NSNumber numberWithDouble:value_]];
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






- (NSNumber*)flga2 {
	[self willAccessValueForKey:@"flga2"];
	NSNumber *result = [self primitiveValueForKey:@"flga2"];
	[self didAccessValueForKey:@"flga2"];
	return result;
}

- (void)setFlga2:(NSNumber*)value_ {
	[self willChangeValueForKey:@"flga2"];
	[self setPrimitiveValue:value_ forKey:@"flga2"];
	[self didChangeValueForKey:@"flga2"];
}



- (BOOL)flga2Value {
	NSNumber *result = [self flga2];
	return result ? [result boolValue] : 0;
}

- (void)setFlga2Value:(BOOL)value_ {
	[self setFlga2:[NSNumber numberWithBool:value_]];
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






- (NSNumber*)durationType {
	[self willAccessValueForKey:@"durationType"];
	NSNumber *result = [self primitiveValueForKey:@"durationType"];
	[self didAccessValueForKey:@"durationType"];
	return result;
}

- (void)setDurationType:(NSNumber*)value_ {
	[self willChangeValueForKey:@"durationType"];
	[self setPrimitiveValue:value_ forKey:@"durationType"];
	[self didChangeValueForKey:@"durationType"];
}



- (short)durationTypeValue {
	NSNumber *result = [self durationType];
	return result ? [result shortValue] : 0;
}

- (void)setDurationTypeValue:(short)value_ {
	[self setDurationType:[NSNumber numberWithShort:value_]];
}






- (NSDate*)endDate {
	[self willAccessValueForKey:@"endDate"];
	NSDate *result = [self primitiveValueForKey:@"endDate"];
	[self didAccessValueForKey:@"endDate"];
	return result;
}

- (void)setEndDate:(NSDate*)value_ {
	[self willChangeValueForKey:@"endDate"];
	[self setPrimitiveValue:value_ forKey:@"endDate"];
	[self didChangeValueForKey:@"endDate"];
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






	

- (MOParts*)parent {
	[self willAccessValueForKey:@"parent"];
	MOParts *result = [self primitiveValueForKey:@"parent"];
	[self didAccessValueForKey:@"parent"];
	return result;
}

- (void)setParent:(MOParts*)value_ {
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
	
- (void)addChildrenObject:(MOParts*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"children"] addObject:value_];
	[self didChangeValueForKey:@"children" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeChildrenObject:(MOParts*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"children"] removeObject:value_];
	[self didChangeValueForKey:@"children" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)childrenSet {
	return [self mutableSetValueForKey:@"children"];
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
	

	

- (NSSet*)partRows {
	[self willAccessValueForKey:@"partRows"];
	NSSet *result = [self primitiveValueForKey:@"partRows"];
	[self didAccessValueForKey:@"partRows"];
	return result;
}

- (void)setPartRows:(NSSet*)value_ {
	[self willChangeValueForKey:@"partRows"];
	[self setPrimitiveValue:value_ forKey:@"partRows"];
	[self didChangeValueForKey:@"partRows"];
}

- (void)addPartRows:(NSSet*)value_ {
	[self willChangeValueForKey:@"partRows" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"partRows"] unionSet:value_];
	[self didChangeValueForKey:@"partRows" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removePartRows:(NSSet*)value_ {
	[self willChangeValueForKey:@"partRows" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"partRows"] minusSet:value_];
	[self didChangeValueForKey:@"partRows" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addPartRowsObject:(MOPartRows*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"partRows" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"partRows"] addObject:value_];
	[self didChangeValueForKey:@"partRows" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removePartRowsObject:(MOPartRows*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"partRows" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"partRows"] removeObject:value_];
	[self didChangeValueForKey:@"partRows" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)partRowsSet {
	return [self mutableSetValueForKey:@"partRows"];
}
	

	

- (NSSet*)playlists {
	[self willAccessValueForKey:@"playlists"];
	NSSet *result = [self primitiveValueForKey:@"playlists"];
	[self didAccessValueForKey:@"playlists"];
	return result;
}

- (void)setPlaylists:(NSSet*)value_ {
	[self willChangeValueForKey:@"playlists"];
	[self setPrimitiveValue:value_ forKey:@"playlists"];
	[self didChangeValueForKey:@"playlists"];
}

- (void)addPlaylists:(NSSet*)value_ {
	[self willChangeValueForKey:@"playlists" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"playlists"] unionSet:value_];
	[self didChangeValueForKey:@"playlists" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removePlaylists:(NSSet*)value_ {
	[self willChangeValueForKey:@"playlists" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"playlists"] minusSet:value_];
	[self didChangeValueForKey:@"playlists" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addPlaylistsObject:(MOPlaylists*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"playlists" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"playlists"] addObject:value_];
	[self didChangeValueForKey:@"playlists" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removePlaylistsObject:(MOPlaylists*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"playlists" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"playlists"] removeObject:value_];
	[self didChangeValueForKey:@"playlists" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)playlistsSet {
	return [self mutableSetValueForKey:@"playlists"];
}
	

	

- (MOCategories*)category {
	[self willAccessValueForKey:@"category"];
	MOCategories *result = [self primitiveValueForKey:@"category"];
	[self didAccessValueForKey:@"category"];
	return result;
}

- (void)setCategory:(MOCategories*)value_ {
	[self willChangeValueForKey:@"category"];
	[self setPrimitiveValue:value_ forKey:@"category"];
	[self didChangeValueForKey:@"category"];
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

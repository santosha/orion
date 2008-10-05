// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOPrices.m instead.

#import "_MOPrices.h"

@implementation _MOPrices

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"Prices" inManagedObjectContext:moc_];									 
}




- (NSNumber*)includeFlag {
	[self willAccessValueForKey:@"includeFlag"];
	NSNumber *result = [self primitiveValueForKey:@"includeFlag"];
	[self didAccessValueForKey:@"includeFlag"];
	return result;
}

- (void)setIncludeFlag:(NSNumber*)value_ {
	[self willChangeValueForKey:@"includeFlag"];
	[self setPrimitiveValue:value_ forKey:@"includeFlag"];
	[self didChangeValueForKey:@"includeFlag"];
}



- (BOOL)includeFlagValue {
	NSNumber *result = [self includeFlag];
	return result ? [result boolValue] : 0;
}

- (void)setIncludeFlagValue:(BOOL)value_ {
	[self setIncludeFlag:[NSNumber numberWithBool:value_]];
}






- (NSDecimalNumber*)duration {
	[self willAccessValueForKey:@"duration"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"duration"];
	[self didAccessValueForKey:@"duration"];
	return result;
}

- (void)setDuration:(NSDecimalNumber*)value_ {
	[self willChangeValueForKey:@"duration"];
	[self setPrimitiveValue:value_ forKey:@"duration"];
	[self didChangeValueForKey:@"duration"];
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






- (NSDecimalNumber*)companyRevenue {
	[self willAccessValueForKey:@"companyRevenue"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"companyRevenue"];
	[self didAccessValueForKey:@"companyRevenue"];
	return result;
}

- (void)setCompanyRevenue:(NSDecimalNumber*)value_ {
	[self willChangeValueForKey:@"companyRevenue"];
	[self setPrimitiveValue:value_ forKey:@"companyRevenue"];
	[self didChangeValueForKey:@"companyRevenue"];
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



- (int)durationTypeValue {
	NSNumber *result = [self durationType];
	return result ? [result intValue] : 0;
}

- (void)setDurationTypeValue:(int)value_ {
	[self setDurationType:[NSNumber numberWithInt:value_]];
}






- (NSString*)website {
	[self willAccessValueForKey:@"website"];
	NSString *result = [self primitiveValueForKey:@"website"];
	[self didAccessValueForKey:@"website"];
	return result;
}

- (void)setWebsite:(NSString*)value_ {
	[self willChangeValueForKey:@"website"];
	[self setPrimitiveValue:value_ forKey:@"website"];
	[self didChangeValueForKey:@"website"];
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






- (NSDecimalNumber*)price {
	[self willAccessValueForKey:@"price"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"price"];
	[self didAccessValueForKey:@"price"];
	return result;
}

- (void)setPrice:(NSDecimalNumber*)value_ {
	[self willChangeValueForKey:@"price"];
	[self setPrimitiveValue:value_ forKey:@"price"];
	[self didChangeValueForKey:@"price"];
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






- (NSString*)importCode {
	[self willAccessValueForKey:@"importCode"];
	NSString *result = [self primitiveValueForKey:@"importCode"];
	[self didAccessValueForKey:@"importCode"];
	return result;
}

- (void)setImportCode:(NSString*)value_ {
	[self willChangeValueForKey:@"importCode"];
	[self setPrimitiveValue:value_ forKey:@"importCode"];
	[self didChangeValueForKey:@"importCode"];
}






- (NSDecimalNumber*)generalExpenses {
	[self willAccessValueForKey:@"generalExpenses"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"generalExpenses"];
	[self didAccessValueForKey:@"generalExpenses"];
	return result;
}

- (void)setGeneralExpenses:(NSDecimalNumber*)value_ {
	[self willChangeValueForKey:@"generalExpenses"];
	[self setPrimitiveValue:value_ forKey:@"generalExpenses"];
	[self didChangeValueForKey:@"generalExpenses"];
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






- (NSNumber*)printFlag {
	[self willAccessValueForKey:@"printFlag"];
	NSNumber *result = [self primitiveValueForKey:@"printFlag"];
	[self didAccessValueForKey:@"printFlag"];
	return result;
}

- (void)setPrintFlag:(NSNumber*)value_ {
	[self willChangeValueForKey:@"printFlag"];
	[self setPrimitiveValue:value_ forKey:@"printFlag"];
	[self didChangeValueForKey:@"printFlag"];
}



- (BOOL)printFlagValue {
	NSNumber *result = [self printFlag];
	return result ? [result boolValue] : 0;
}

- (void)setPrintFlagValue:(BOOL)value_ {
	[self setPrintFlag:[NSNumber numberWithBool:value_]];
}






- (NSDecimalNumber*)analisysPrice {
	[self willAccessValueForKey:@"analisysPrice"];
	NSDecimalNumber *result = [self primitiveValueForKey:@"analisysPrice"];
	[self didAccessValueForKey:@"analisysPrice"];
	return result;
}

- (void)setAnalisysPrice:(NSDecimalNumber*)value_ {
	[self willChangeValueForKey:@"analisysPrice"];
	[self setPrimitiveValue:value_ forKey:@"analisysPrice"];
	[self didChangeValueForKey:@"analisysPrice"];
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






- (NSNumber*)manwork {
	[self willAccessValueForKey:@"manwork"];
	NSNumber *result = [self primitiveValueForKey:@"manwork"];
	[self didAccessValueForKey:@"manwork"];
	return result;
}

- (void)setManwork:(NSNumber*)value_ {
	[self willChangeValueForKey:@"manwork"];
	[self setPrimitiveValue:value_ forKey:@"manwork"];
	[self didChangeValueForKey:@"manwork"];
}



- (BOOL)manworkValue {
	NSNumber *result = [self manwork];
	return result ? [result boolValue] : 0;
}

- (void)setManworkValue:(BOOL)value_ {
	[self setManwork:[NSNumber numberWithBool:value_]];
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






- (NSNumber*)longDescriptionPriority {
	[self willAccessValueForKey:@"longDescriptionPriority"];
	NSNumber *result = [self primitiveValueForKey:@"longDescriptionPriority"];
	[self didAccessValueForKey:@"longDescriptionPriority"];
	return result;
}

- (void)setLongDescriptionPriority:(NSNumber*)value_ {
	[self willChangeValueForKey:@"longDescriptionPriority"];
	[self setPrimitiveValue:value_ forKey:@"longDescriptionPriority"];
	[self didChangeValueForKey:@"longDescriptionPriority"];
}



- (int)longDescriptionPriorityValue {
	NSNumber *result = [self longDescriptionPriority];
	return result ? [result intValue] : 0;
}

- (void)setLongDescriptionPriorityValue:(int)value_ {
	[self setLongDescriptionPriority:[NSNumber numberWithInt:value_]];
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






	

- (NSSet*)analisysRows {
	[self willAccessValueForKey:@"analisysRows"];
	NSSet *result = [self primitiveValueForKey:@"analisysRows"];
	[self didAccessValueForKey:@"analisysRows"];
	return result;
}

- (void)setAnalisysRows:(NSSet*)value_ {
	[self willChangeValueForKey:@"analisysRows"];
	[self setPrimitiveValue:value_ forKey:@"analisysRows"];
	[self didChangeValueForKey:@"analisysRows"];
}

- (void)addAnalisysRows:(NSSet*)value_ {
	[self willChangeValueForKey:@"analisysRows" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"analisysRows"] unionSet:value_];
	[self didChangeValueForKey:@"analisysRows" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeAnalisysRows:(NSSet*)value_ {
	[self willChangeValueForKey:@"analisysRows" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"analisysRows"] minusSet:value_];
	[self didChangeValueForKey:@"analisysRows" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addAnalisysRowsObject:(MOAnalisys*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"analisysRows" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"analisysRows"] addObject:value_];
	[self didChangeValueForKey:@"analisysRows" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeAnalisysRowsObject:(MOAnalisys*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"analisysRows" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"analisysRows"] removeObject:value_];
	[self didChangeValueForKey:@"analisysRows" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)analisysRowsSet {
	return [self mutableSetValueForKey:@"analisysRows"];
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
	

	

- (NSSet*)analisysReference {
	[self willAccessValueForKey:@"analisysReference"];
	NSSet *result = [self primitiveValueForKey:@"analisysReference"];
	[self didAccessValueForKey:@"analisysReference"];
	return result;
}

- (void)setAnalisysReference:(NSSet*)value_ {
	[self willChangeValueForKey:@"analisysReference"];
	[self setPrimitiveValue:value_ forKey:@"analisysReference"];
	[self didChangeValueForKey:@"analisysReference"];
}

- (void)addAnalisysReference:(NSSet*)value_ {
	[self willChangeValueForKey:@"analisysReference" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"analisysReference"] unionSet:value_];
	[self didChangeValueForKey:@"analisysReference" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeAnalisysReference:(NSSet*)value_ {
	[self willChangeValueForKey:@"analisysReference" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"analisysReference"] minusSet:value_];
	[self didChangeValueForKey:@"analisysReference" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addAnalisysReferenceObject:(MOAnalisys*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"analisysReference" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"analisysReference"] addObject:value_];
	[self didChangeValueForKey:@"analisysReference" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeAnalisysReferenceObject:(MOAnalisys*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"analisysReference" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"analisysReference"] removeObject:value_];
	[self didChangeValueForKey:@"analisysReference" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)analisysReferenceSet {
	return [self mutableSetValueForKey:@"analisysReference"];
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

	

@end

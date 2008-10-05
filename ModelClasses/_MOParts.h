// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOParts.h instead.

#import <CoreData/CoreData.h>



@class MOParts;

@class MOParts;

@class MOLocations;

@class MOPartRows;

@class MOPlaylists;

@class MOCategories;

@class MOProjects;


@interface _MOParts : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSNumber*)quantity;
- (void)setQuantity:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *quantity;
#endif

- (double)quantityValue;
- (void)setQuantityValue:(double)value_;

//- (BOOL)validateQuantity:(id*)value_ error:(NSError**)error_;



- (NSNumber*)duration;
- (void)setDuration:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *duration;
#endif

- (double)durationValue;
- (void)setDurationValue:(double)value_;

//- (BOOL)validateDuration:(id*)value_ error:(NSError**)error_;



- (NSNumber*)flag1;
- (void)setFlag1:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *flag1;
#endif

- (BOOL)flag1Value;
- (void)setFlag1Value:(BOOL)value_;

//- (BOOL)validateFlag1:(id*)value_ error:(NSError**)error_;



- (NSNumber*)status;
- (void)setStatus:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *status;
#endif

- (int)statusValue;
- (void)setStatusValue:(int)value_;

//- (BOOL)validateStatus:(id*)value_ error:(NSError**)error_;



- (NSDecimalNumber*)totalPrice;
- (void)setTotalPrice:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *totalPrice;
#endif

//- (BOOL)validateTotalPrice:(id*)value_ error:(NSError**)error_;



- (NSNumber*)orderNumber;
- (void)setOrderNumber:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *orderNumber;
#endif

- (int)orderNumberValue;
- (void)setOrderNumberValue:(int)value_;

//- (BOOL)validateOrderNumber:(id*)value_ error:(NSError**)error_;



- (NSNumber*)type;
- (void)setType:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *type;
#endif

- (int)typeValue;
- (void)setTypeValue:(int)value_;

//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;



- (NSNumber*)flga2;
- (void)setFlga2:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *flga2;
#endif

- (BOOL)flga2Value;
- (void)setFlga2Value:(BOOL)value_;

//- (BOOL)validateFlga2:(id*)value_ error:(NSError**)error_;



- (NSDate*)startDate;
- (void)setStartDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *startDate;
#endif

//- (BOOL)validateStartDate:(id*)value_ error:(NSError**)error_;



- (NSDate*)modifyDate;
- (void)setModifyDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *modifyDate;
#endif

//- (BOOL)validateModifyDate:(id*)value_ error:(NSError**)error_;



- (NSNumber*)durationType;
- (void)setDurationType:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *durationType;
#endif

- (short)durationTypeValue;
- (void)setDurationTypeValue:(short)value_;

//- (BOOL)validateDurationType:(id*)value_ error:(NSError**)error_;



- (NSDate*)endDate;
- (void)setEndDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *endDate;
#endif

//- (BOOL)validateEndDate:(id*)value_ error:(NSError**)error_;



- (NSNumber*)mode;
- (void)setMode:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *mode;
#endif

- (int)modeValue;
- (void)setModeValue:(int)value_;

//- (BOOL)validateMode:(id*)value_ error:(NSError**)error_;



- (NSData*)media;
- (void)setMedia:(NSData*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSData *media;
#endif

//- (BOOL)validateMedia:(id*)value_ error:(NSError**)error_;



- (NSString*)code;
- (void)setCode:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *code;
#endif

//- (BOOL)validateCode:(id*)value_ error:(NSError**)error_;



- (NSString*)name;
- (void)setName:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *name;
#endif

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;



- (NSString*)URI;
- (void)setURI:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *URI;
#endif

//- (BOOL)validateURI:(id*)value_ error:(NSError**)error_;



- (NSString*)longDescription;
- (void)setLongDescription:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *longDescription;
#endif

//- (BOOL)validateLongDescription:(id*)value_ error:(NSError**)error_;



- (NSDate*)createDate;
- (void)setCreateDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *createDate;
#endif

//- (BOOL)validateCreateDate:(id*)value_ error:(NSError**)error_;




- (MOParts*)parent;
- (void)setParent:(MOParts*)value_;
//- (BOOL)validateParent:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOParts* parent;
#endif



- (NSSet*)children;
- (void)addChildren:(NSSet*)value_;
- (void)removeChildren:(NSSet*)value_;
- (void)addChildrenObject:(MOParts*)value_;
- (void)removeChildrenObject:(MOParts*)value_;
- (NSMutableSet*)childrenSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* children;
#endif



- (NSSet*)locations;
- (void)addLocations:(NSSet*)value_;
- (void)removeLocations:(NSSet*)value_;
- (void)addLocationsObject:(MOLocations*)value_;
- (void)removeLocationsObject:(MOLocations*)value_;
- (NSMutableSet*)locationsSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* locations;
#endif



- (NSSet*)partRows;
- (void)addPartRows:(NSSet*)value_;
- (void)removePartRows:(NSSet*)value_;
- (void)addPartRowsObject:(MOPartRows*)value_;
- (void)removePartRowsObject:(MOPartRows*)value_;
- (NSMutableSet*)partRowsSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* partRows;
#endif



- (NSSet*)playlists;
- (void)addPlaylists:(NSSet*)value_;
- (void)removePlaylists:(NSSet*)value_;
- (void)addPlaylistsObject:(MOPlaylists*)value_;
- (void)removePlaylistsObject:(MOPlaylists*)value_;
- (NSMutableSet*)playlistsSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* playlists;
#endif



- (MOCategories*)category;
- (void)setCategory:(MOCategories*)value_;
//- (BOOL)validateCategory:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOCategories* category;
#endif



- (MOProjects*)project;
- (void)setProject:(MOProjects*)value_;
//- (BOOL)validateProject:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOProjects* project;
#endif


@end

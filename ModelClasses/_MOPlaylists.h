// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOPlaylists.h instead.

#import <CoreData/CoreData.h>



@class MOPlaylists;

@class MOPlaylists;

@class MOPrices;

@class MOParts;


@interface _MOPlaylists : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSNumber*)mode;
- (void)setMode:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *mode;
#endif

- (int)modeValue;
- (void)setModeValue:(int)value_;

//- (BOOL)validateMode:(id*)value_ error:(NSError**)error_;



- (NSString*)name;
- (void)setName:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *name;
#endif

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;



- (NSNumber*)flag1;
- (void)setFlag1:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *flag1;
#endif

- (BOOL)flag1Value;
- (void)setFlag1Value:(BOOL)value_;

//- (BOOL)validateFlag1:(id*)value_ error:(NSError**)error_;



- (NSString*)briefDescription;
- (void)setBriefDescription:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *briefDescription;
#endif

//- (BOOL)validateBriefDescription:(id*)value_ error:(NSError**)error_;



- (NSNumber*)flag2;
- (void)setFlag2:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *flag2;
#endif

- (BOOL)flag2Value;
- (void)setFlag2Value:(BOOL)value_;

//- (BOOL)validateFlag2:(id*)value_ error:(NSError**)error_;



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



- (NSObject*)predicate;
- (void)setPredicate:(NSObject*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSObject *predicate;
#endif

//- (BOOL)validatePredicate:(id*)value_ error:(NSError**)error_;




- (MOPlaylists*)parent;
- (void)setParent:(MOPlaylists*)value_;
//- (BOOL)validateParent:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOPlaylists* parent;
#endif



- (NSSet*)children;
- (void)addChildren:(NSSet*)value_;
- (void)removeChildren:(NSSet*)value_;
- (void)addChildrenObject:(MOPlaylists*)value_;
- (void)removeChildrenObject:(MOPlaylists*)value_;
- (NSMutableSet*)childrenSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* children;
#endif



- (NSSet*)prices;
- (void)addPrices:(NSSet*)value_;
- (void)removePrices:(NSSet*)value_;
- (void)addPricesObject:(MOPrices*)value_;
- (void)removePricesObject:(MOPrices*)value_;
- (NSMutableSet*)pricesSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* prices;
#endif



- (NSSet*)parts;
- (void)addParts:(NSSet*)value_;
- (void)removeParts:(NSSet*)value_;
- (void)addPartsObject:(MOParts*)value_;
- (void)removePartsObject:(MOParts*)value_;
- (NSMutableSet*)partsSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* parts;
#endif


@end

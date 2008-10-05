// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOCategories.h instead.

#import <CoreData/CoreData.h>



@class MOCategories;

@class MOParts;

@class MOPrices;

@class MOCategories;


@interface _MOCategories : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSNumber*)flag1;
- (void)setFlag1:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *flag1;
#endif

- (BOOL)flag1Value;
- (void)setFlag1Value:(BOOL)value_;

//- (BOOL)validateFlag1:(id*)value_ error:(NSError**)error_;



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



- (NSDecimalNumber*)variation;
- (void)setVariation:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *variation;
#endif

//- (BOOL)validateVariation:(id*)value_ error:(NSError**)error_;



- (NSNumber*)numberingMode;
- (void)setNumberingMode:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *numberingMode;
#endif

- (int)numberingModeValue;
- (void)setNumberingModeValue:(int)value_;

//- (BOOL)validateNumberingMode:(id*)value_ error:(NSError**)error_;



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



- (NSString*)code;
- (void)setCode:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *code;
#endif

//- (BOOL)validateCode:(id*)value_ error:(NSError**)error_;



- (NSString*)briefDescription;
- (void)setBriefDescription:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *briefDescription;
#endif

//- (BOOL)validateBriefDescription:(id*)value_ error:(NSError**)error_;



- (NSString*)longDescription;
- (void)setLongDescription:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *longDescription;
#endif

//- (BOOL)validateLongDescription:(id*)value_ error:(NSError**)error_;



- (NSString*)URI;
- (void)setURI:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *URI;
#endif

//- (BOOL)validateURI:(id*)value_ error:(NSError**)error_;



- (NSDecimalNumber*)manworkIncidence;
- (void)setManworkIncidence:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *manworkIncidence;
#endif

//- (BOOL)validateManworkIncidence:(id*)value_ error:(NSError**)error_;



- (NSNumber*)flag2;
- (void)setFlag2:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *flag2;
#endif

- (BOOL)flag2Value;
- (void)setFlag2Value:(BOOL)value_;

//- (BOOL)validateFlag2:(id*)value_ error:(NSError**)error_;



- (NSData*)icon;
- (void)setIcon:(NSData*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSData *icon;
#endif

//- (BOOL)validateIcon:(id*)value_ error:(NSError**)error_;




- (MOCategories*)parent;
- (void)setParent:(MOCategories*)value_;
//- (BOOL)validateParent:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOCategories* parent;
#endif



- (NSSet*)measures;
- (void)addMeasures:(NSSet*)value_;
- (void)removeMeasures:(NSSet*)value_;
- (void)addMeasuresObject:(MOParts*)value_;
- (void)removeMeasuresObject:(MOParts*)value_;
- (NSMutableSet*)measuresSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* measures;
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



- (NSSet*)children;
- (void)addChildren:(NSSet*)value_;
- (void)removeChildren:(NSSet*)value_;
- (void)addChildrenObject:(MOCategories*)value_;
- (void)removeChildrenObject:(MOCategories*)value_;
- (NSMutableSet*)childrenSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* children;
#endif


@end

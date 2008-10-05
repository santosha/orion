// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOPartRows.h instead.

#import <CoreData/CoreData.h>



@class MOMeasures;

@class MOParts;

@class MOPrices;


@interface _MOPartRows : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSNumber*)partQuantity;
- (void)setPartQuantity:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *partQuantity;
#endif

- (double)partQuantityValue;
- (void)setPartQuantityValue:(double)value_;

//- (BOOL)validatePartQuantity:(id*)value_ error:(NSError**)error_;



- (NSNumber*)quantity;
- (void)setQuantity:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *quantity;
#endif

- (double)quantityValue;
- (void)setQuantityValue:(double)value_;

//- (BOOL)validateQuantity:(id*)value_ error:(NSError**)error_;



- (NSString*)partQuantityFormula;
- (void)setPartQuantityFormula:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *partQuantityFormula;
#endif

//- (BOOL)validatePartQuantityFormula:(id*)value_ error:(NSError**)error_;



- (NSNumber*)status;
- (void)setStatus:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *status;
#endif

- (int)statusValue;
- (void)setStatusValue:(int)value_;

//- (BOOL)validateStatus:(id*)value_ error:(NSError**)error_;



- (NSString*)URI;
- (void)setURI:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *URI;
#endif

//- (BOOL)validateURI:(id*)value_ error:(NSError**)error_;



- (NSDecimalNumber*)totalPrice;
- (void)setTotalPrice:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *totalPrice;
#endif

//- (BOOL)validateTotalPrice:(id*)value_ error:(NSError**)error_;



- (NSDate*)createDate;
- (void)setCreateDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *createDate;
#endif

//- (BOOL)validateCreateDate:(id*)value_ error:(NSError**)error_;



- (NSNumber*)orderNumber;
- (void)setOrderNumber:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *orderNumber;
#endif

- (int)orderNumberValue;
- (void)setOrderNumberValue:(int)value_;

//- (BOOL)validateOrderNumber:(id*)value_ error:(NSError**)error_;



- (NSDate*)modifyDate;
- (void)setModifyDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *modifyDate;
#endif

//- (BOOL)validateModifyDate:(id*)value_ error:(NSError**)error_;



- (NSString*)quantityFormula;
- (void)setQuantityFormula:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *quantityFormula;
#endif

//- (BOOL)validateQuantityFormula:(id*)value_ error:(NSError**)error_;




- (NSSet*)measures;
- (void)addMeasures:(NSSet*)value_;
- (void)removeMeasures:(NSSet*)value_;
- (void)addMeasuresObject:(MOMeasures*)value_;
- (void)removeMeasuresObject:(MOMeasures*)value_;
- (NSMutableSet*)measuresSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* measures;
#endif



- (MOParts*)part;
- (void)setPart:(MOParts*)value_;
//- (BOOL)validatePart:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOParts* part;
#endif



- (MOPrices*)price;
- (void)setPrice:(MOPrices*)value_;
//- (BOOL)validatePrice:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOPrices* price;
#endif


@end

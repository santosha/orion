// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOAnalisys.h instead.

#import <CoreData/CoreData.h>



@class MOPrices;

@class MOPrices;

@class MOUMFieldsValues;


@interface _MOAnalisys : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSNumber*)quantity;
- (void)setQuantity:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *quantity;
#endif

- (double)quantityValue;
- (void)setQuantityValue:(double)value_;

//- (BOOL)validateQuantity:(id*)value_ error:(NSError**)error_;



- (NSString*)umCode;
- (void)setUmCode:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *umCode;
#endif

//- (BOOL)validateUmCode:(id*)value_ error:(NSError**)error_;



- (NSNumber*)flag1;
- (void)setFlag1:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *flag1;
#endif

- (BOOL)flag1Value;
- (void)setFlag1Value:(BOOL)value_;

//- (BOOL)validateFlag1:(id*)value_ error:(NSError**)error_;



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



- (NSDecimalNumber*)totalPrice;
- (void)setTotalPrice:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *totalPrice;
#endif

//- (BOOL)validateTotalPrice:(id*)value_ error:(NSError**)error_;



- (NSString*)freeText;
- (void)setFreeText:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *freeText;
#endif

//- (BOOL)validateFreeText:(id*)value_ error:(NSError**)error_;



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



- (NSDecimalNumber*)unitPrice;
- (void)setUnitPrice:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *unitPrice;
#endif

//- (BOOL)validateUnitPrice:(id*)value_ error:(NSError**)error_;



- (NSString*)formula;
- (void)setFormula:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *formula;
#endif

//- (BOOL)validateFormula:(id*)value_ error:(NSError**)error_;




- (MOPrices*)referencePrice;
- (void)setReferencePrice:(MOPrices*)value_;
//- (BOOL)validateReferencePrice:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOPrices* referencePrice;
#endif



- (MOPrices*)parentPrice;
- (void)setParentPrice:(MOPrices*)value_;
//- (BOOL)validateParentPrice:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOPrices* parentPrice;
#endif



- (NSSet*)umFieldsValues;
- (void)addUmFieldsValues:(NSSet*)value_;
- (void)removeUmFieldsValues:(NSSet*)value_;
- (void)addUmFieldsValuesObject:(MOUMFieldsValues*)value_;
- (void)removeUmFieldsValuesObject:(MOUMFieldsValues*)value_;
- (NSMutableSet*)umFieldsValuesSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* umFieldsValues;
#endif


@end

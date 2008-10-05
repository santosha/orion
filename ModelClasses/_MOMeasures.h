// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOMeasures.h instead.

#import <CoreData/CoreData.h>



@class MOPartRows;

@class MOUMFieldsValues;


@interface _MOMeasures : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSNumber*)quantity;
- (void)setQuantity:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *quantity;
#endif

- (double)quantityValue;
- (void)setQuantityValue:(double)value_;

//- (BOOL)validateQuantity:(id*)value_ error:(NSError**)error_;



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



- (NSNumber*)partQuantity;
- (void)setPartQuantity:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *partQuantity;
#endif

- (int)partQuantityValue;
- (void)setPartQuantityValue:(int)value_;

//- (BOOL)validatePartQuantity:(id*)value_ error:(NSError**)error_;



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



- (NSString*)URI;
- (void)setURI:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *URI;
#endif

//- (BOOL)validateURI:(id*)value_ error:(NSError**)error_;



- (NSString*)partQuantityFormula;
- (void)setPartQuantityFormula:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *partQuantityFormula;
#endif

//- (BOOL)validatePartQuantityFormula:(id*)value_ error:(NSError**)error_;



- (NSNumber*)flag2;
- (void)setFlag2:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *flag2;
#endif

- (BOOL)flag2Value;
- (void)setFlag2Value:(BOOL)value_;

//- (BOOL)validateFlag2:(id*)value_ error:(NSError**)error_;



- (NSString*)formula;
- (void)setFormula:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *formula;
#endif

//- (BOOL)validateFormula:(id*)value_ error:(NSError**)error_;



- (NSString*)comment;
- (void)setComment:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *comment;
#endif

//- (BOOL)validateComment:(id*)value_ error:(NSError**)error_;



- (NSString*)quantityFormula;
- (void)setQuantityFormula:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *quantityFormula;
#endif

//- (BOOL)validateQuantityFormula:(id*)value_ error:(NSError**)error_;




- (MOPartRows*)partRow;
- (void)setPartRow:(MOPartRows*)value_;
//- (BOOL)validatePartRow:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOPartRows* partRow;
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

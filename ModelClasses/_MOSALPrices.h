// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOSALPrices.h instead.

#import <CoreData/CoreData.h>



@class MOPrices;

@class MOSAL;


@interface _MOSALPrices : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSDecimalNumber*)price;
- (void)setPrice:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *price;
#endif

//- (BOOL)validatePrice:(id*)value_ error:(NSError**)error_;



- (NSNumber*)status;
- (void)setStatus:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *status;
#endif

- (int)statusValue;
- (void)setStatusValue:(int)value_;

//- (BOOL)validateStatus:(id*)value_ error:(NSError**)error_;



- (NSDecimalNumber*)variation;
- (void)setVariation:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *variation;
#endif

//- (BOOL)validateVariation:(id*)value_ error:(NSError**)error_;




- (MOPrices*)referencePrice;
- (void)setReferencePrice:(MOPrices*)value_;
//- (BOOL)validateReferencePrice:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOPrices* referencePrice;
#endif



- (MOSAL*)sal;
- (void)setSal:(MOSAL*)value_;
//- (BOOL)validateSal:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOSAL* sal;
#endif


@end

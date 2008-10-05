// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOSALMeasures.h instead.

#import <CoreData/CoreData.h>
#import "MOMeasures.h"


@class MOSAL;


@interface _MOSALMeasures : MOMeasures {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSDecimalNumber*)completitionPercent;
- (void)setCompletitionPercent:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *completitionPercent;
#endif

//- (BOOL)validateCompletitionPercent:(id*)value_ error:(NSError**)error_;



- (NSNumber*)status;
- (void)setStatus:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *status;
#endif

- (int)statusValue;
- (void)setStatusValue:(int)value_;

//- (BOOL)validateStatus:(id*)value_ error:(NSError**)error_;



- (NSDate*)modifyDate;
- (void)setModifyDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *modifyDate;
#endif

//- (BOOL)validateModifyDate:(id*)value_ error:(NSError**)error_;



- (NSDate*)createDate;
- (void)setCreateDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *createDate;
#endif

//- (BOOL)validateCreateDate:(id*)value_ error:(NSError**)error_;



- (NSNumber*)completitionQuantity;
- (void)setCompletitionQuantity:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *completitionQuantity;
#endif

- (double)completitionQuantityValue;
- (void)setCompletitionQuantityValue:(double)value_;

//- (BOOL)validateCompletitionQuantity:(id*)value_ error:(NSError**)error_;




- (MOSAL*)SAL;
- (void)setSAL:(MOSAL*)value_;
//- (BOOL)validateSAL:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOSAL* SAL;
#endif


@end

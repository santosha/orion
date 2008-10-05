// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOSAL.h instead.

#import <CoreData/CoreData.h>
#import "MOProjects.h"


@class MOProjects;

@class MOSALPrices;

@class MOLocations;

@class MOSALMeasures;


@interface _MOSAL : MOProjects {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSDate*)estimatedEndDate;
- (void)setEstimatedEndDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *estimatedEndDate;
#endif

//- (BOOL)validateEstimatedEndDate:(id*)value_ error:(NSError**)error_;



- (NSNumber*)number;
- (void)setNumber:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *number;
#endif

- (int)numberValue;
- (void)setNumberValue:(int)value_;

//- (BOOL)validateNumber:(id*)value_ error:(NSError**)error_;



- (NSNumber*)status;
- (void)setStatus:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *status;
#endif

- (int)statusValue;
- (void)setStatusValue:(int)value_;

//- (BOOL)validateStatus:(id*)value_ error:(NSError**)error_;



- (NSDate*)startDate;
- (void)setStartDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *startDate;
#endif

//- (BOOL)validateStartDate:(id*)value_ error:(NSError**)error_;



- (NSNumber*)mode;
- (void)setMode:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *mode;
#endif

- (int)modeValue;
- (void)setModeValue:(int)value_;

//- (BOOL)validateMode:(id*)value_ error:(NSError**)error_;



- (NSDate*)acquireDate;
- (void)setAcquireDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *acquireDate;
#endif

//- (BOOL)validateAcquireDate:(id*)value_ error:(NSError**)error_;




- (MOProjects*)project;
- (void)setProject:(MOProjects*)value_;
//- (BOOL)validateProject:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOProjects* project;
#endif



- (NSSet*)salPrices;
- (void)addSalPrices:(NSSet*)value_;
- (void)removeSalPrices:(NSSet*)value_;
- (void)addSalPricesObject:(MOSALPrices*)value_;
- (void)removeSalPricesObject:(MOSALPrices*)value_;
- (NSMutableSet*)salPricesSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* salPrices;
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



- (NSSet*)SALMeasures;
- (void)addSALMeasures:(NSSet*)value_;
- (void)removeSALMeasures:(NSSet*)value_;
- (void)addSALMeasuresObject:(MOSALMeasures*)value_;
- (void)removeSALMeasuresObject:(MOSALMeasures*)value_;
- (NSMutableSet*)SALMeasuresSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* SALMeasures;
#endif


@end

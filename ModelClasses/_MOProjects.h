// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOProjects.h instead.

#import <CoreData/CoreData.h>



@class MOSAL;

@class MOParts;

@class MOLocations;


@interface _MOProjects : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSString*)longDescriptionText;
- (void)setLongDescriptionText:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *longDescriptionText;
#endif

//- (BOOL)validateLongDescriptionText:(id*)value_ error:(NSError**)error_;



- (NSString*)workDescription;
- (void)setWorkDescription:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *workDescription;
#endif

//- (BOOL)validateWorkDescription:(id*)value_ error:(NSError**)error_;



- (NSString*)city;
- (void)setCity:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *city;
#endif

//- (BOOL)validateCity:(id*)value_ error:(NSError**)error_;



- (NSString*)state;
- (void)setState:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *state;
#endif

//- (BOOL)validateState:(id*)value_ error:(NSError**)error_;



- (NSString*)company;
- (void)setCompany:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *company;
#endif

//- (BOOL)validateCompany:(id*)value_ error:(NSError**)error_;



- (NSString*)URI;
- (void)setURI:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *URI;
#endif

//- (BOOL)validateURI:(id*)value_ error:(NSError**)error_;



- (NSString*)briefDescription;
- (void)setBriefDescription:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *briefDescription;
#endif

//- (BOOL)validateBriefDescription:(id*)value_ error:(NSError**)error_;



- (NSObject*)longDescription;
- (void)setLongDescription:(NSObject*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSObject *longDescription;
#endif

//- (BOOL)validateLongDescription:(id*)value_ error:(NSError**)error_;



- (NSString*)customer;
- (void)setCustomer:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *customer;
#endif

//- (BOOL)validateCustomer:(id*)value_ error:(NSError**)error_;



- (NSDate*)createDate;
- (void)setCreateDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *createDate;
#endif

//- (BOOL)validateCreateDate:(id*)value_ error:(NSError**)error_;



- (NSString*)locality;
- (void)setLocality:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *locality;
#endif

//- (BOOL)validateLocality:(id*)value_ error:(NSError**)error_;



- (NSString*)engineer;
- (void)setEngineer:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *engineer;
#endif

//- (BOOL)validateEngineer:(id*)value_ error:(NSError**)error_;




- (NSSet*)sals;
- (void)addSals:(NSSet*)value_;
- (void)removeSals:(NSSet*)value_;
- (void)addSalsObject:(MOSAL*)value_;
- (void)removeSalsObject:(MOSAL*)value_;
- (NSMutableSet*)salsSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* sals;
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



- (MOLocations*)location;
- (void)setLocation:(MOLocations*)value_;
//- (BOOL)validateLocation:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOLocations* location;
#endif


@end

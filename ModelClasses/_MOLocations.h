// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOLocations.h instead.

#import <CoreData/CoreData.h>



@class MOSAL;

@class MOParts;

@class MOProjects;


@interface _MOLocations : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSString*)address;
- (void)setAddress:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *address;
#endif

//- (BOOL)validateAddress:(id*)value_ error:(NSError**)error_;



- (NSObject*)media;
- (void)setMedia:(NSObject*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSObject *media;
#endif

//- (BOOL)validateMedia:(id*)value_ error:(NSError**)error_;



- (NSNumber*)mode;
- (void)setMode:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *mode;
#endif

- (int)modeValue;
- (void)setModeValue:(int)value_;

//- (BOOL)validateMode:(id*)value_ error:(NSError**)error_;



- (NSNumber*)north;
- (void)setNorth:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *north;
#endif

- (double)northValue;
- (void)setNorthValue:(double)value_;

//- (BOOL)validateNorth:(id*)value_ error:(NSError**)error_;



- (NSNumber*)alt;
- (void)setAlt:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *alt;
#endif

- (double)altValue;
- (void)setAltValue:(double)value_;

//- (BOOL)validateAlt:(id*)value_ error:(NSError**)error_;



- (NSDate*)createDate;
- (void)setCreateDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *createDate;
#endif

//- (BOOL)validateCreateDate:(id*)value_ error:(NSError**)error_;



- (NSNumber*)type;
- (void)setType:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *type;
#endif

- (int)typeValue;
- (void)setTypeValue:(int)value_;

//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;



- (NSNumber*)east;
- (void)setEast:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *east;
#endif

- (double)eastValue;
- (void)setEastValue:(double)value_;

//- (BOOL)validateEast:(id*)value_ error:(NSError**)error_;



- (NSString*)comment;
- (void)setComment:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *comment;
#endif

//- (BOOL)validateComment:(id*)value_ error:(NSError**)error_;




- (MOSAL*)SAL;
- (void)setSAL:(MOSAL*)value_;
//- (BOOL)validateSAL:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOSAL* SAL;
#endif



- (MOParts*)part;
- (void)setPart:(MOParts*)value_;
//- (BOOL)validatePart:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOParts* part;
#endif



- (MOProjects*)project;
- (void)setProject:(MOProjects*)value_;
//- (BOOL)validateProject:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOProjects* project;
#endif


@end

// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOUMFieldsValues.h instead.

#import <CoreData/CoreData.h>



@class MOAnalisys;

@class MOMeasures;


@interface _MOUMFieldsValues : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSNumber*)value;
- (void)setValue:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *value;
#endif

- (double)valueValue;
- (void)setValueValue:(double)value_;

//- (BOOL)validateValue:(id*)value_ error:(NSError**)error_;



- (NSString*)key;
- (void)setKey:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *key;
#endif

//- (BOOL)validateKey:(id*)value_ error:(NSError**)error_;



- (NSString*)formula;
- (void)setFormula:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *formula;
#endif

//- (BOOL)validateFormula:(id*)value_ error:(NSError**)error_;




- (MOAnalisys*)analisys;
- (void)setAnalisys:(MOAnalisys*)value_;
//- (BOOL)validateAnalisys:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOAnalisys* analisys;
#endif



- (MOMeasures*)measure;
- (void)setMeasure:(MOMeasures*)value_;
//- (BOOL)validateMeasure:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOMeasures* measure;
#endif


@end

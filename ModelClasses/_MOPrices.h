// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOPrices.h instead.

#import <CoreData/CoreData.h>



@class MOAnalisys;

@class MOPartRows;

@class MOSALPrices;

@class MOPlaylists;

@class MOAnalisys;

@class MOCategories;


@interface _MOPrices : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSNumber*)includeFlag;
- (void)setIncludeFlag:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *includeFlag;
#endif

- (BOOL)includeFlagValue;
- (void)setIncludeFlagValue:(BOOL)value_;

//- (BOOL)validateIncludeFlag:(id*)value_ error:(NSError**)error_;



- (NSDecimalNumber*)duration;
- (void)setDuration:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *duration;
#endif

//- (BOOL)validateDuration:(id*)value_ error:(NSError**)error_;



- (NSNumber*)flag1;
- (void)setFlag1:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *flag1;
#endif

- (BOOL)flag1Value;
- (void)setFlag1Value:(BOOL)value_;

//- (BOOL)validateFlag1:(id*)value_ error:(NSError**)error_;



- (NSDecimalNumber*)companyRevenue;
- (void)setCompanyRevenue:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *companyRevenue;
#endif

//- (BOOL)validateCompanyRevenue:(id*)value_ error:(NSError**)error_;



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



- (NSDate*)startDate;
- (void)setStartDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *startDate;
#endif

//- (BOOL)validateStartDate:(id*)value_ error:(NSError**)error_;



- (NSDate*)modifyDate;
- (void)setModifyDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *modifyDate;
#endif

//- (BOOL)validateModifyDate:(id*)value_ error:(NSError**)error_;



- (NSNumber*)durationType;
- (void)setDurationType:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *durationType;
#endif

- (int)durationTypeValue;
- (void)setDurationTypeValue:(int)value_;

//- (BOOL)validateDurationType:(id*)value_ error:(NSError**)error_;



- (NSString*)website;
- (void)setWebsite:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *website;
#endif

//- (BOOL)validateWebsite:(id*)value_ error:(NSError**)error_;



- (NSString*)code;
- (void)setCode:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *code;
#endif

//- (BOOL)validateCode:(id*)value_ error:(NSError**)error_;



- (NSDecimalNumber*)price;
- (void)setPrice:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *price;
#endif

//- (BOOL)validatePrice:(id*)value_ error:(NSError**)error_;



- (NSDate*)createDate;
- (void)setCreateDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *createDate;
#endif

//- (BOOL)validateCreateDate:(id*)value_ error:(NSError**)error_;



- (NSString*)importCode;
- (void)setImportCode:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *importCode;
#endif

//- (BOOL)validateImportCode:(id*)value_ error:(NSError**)error_;



- (NSDecimalNumber*)generalExpenses;
- (void)setGeneralExpenses:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *generalExpenses;
#endif

//- (BOOL)validateGeneralExpenses:(id*)value_ error:(NSError**)error_;



- (NSString*)longDescriptionText;
- (void)setLongDescriptionText:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *longDescriptionText;
#endif

//- (BOOL)validateLongDescriptionText:(id*)value_ error:(NSError**)error_;



- (NSString*)umCode;
- (void)setUmCode:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *umCode;
#endif

//- (BOOL)validateUmCode:(id*)value_ error:(NSError**)error_;



- (NSNumber*)printFlag;
- (void)setPrintFlag:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *printFlag;
#endif

- (BOOL)printFlagValue;
- (void)setPrintFlagValue:(BOOL)value_;

//- (BOOL)validatePrintFlag:(id*)value_ error:(NSError**)error_;



- (NSDecimalNumber*)analisysPrice;
- (void)setAnalisysPrice:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *analisysPrice;
#endif

//- (BOOL)validateAnalisysPrice:(id*)value_ error:(NSError**)error_;



- (NSDecimalNumber*)variation;
- (void)setVariation:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *variation;
#endif

//- (BOOL)validateVariation:(id*)value_ error:(NSError**)error_;



- (NSNumber*)manwork;
- (void)setManwork:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *manwork;
#endif

- (BOOL)manworkValue;
- (void)setManworkValue:(BOOL)value_;

//- (BOOL)validateManwork:(id*)value_ error:(NSError**)error_;



- (NSObject*)media;
- (void)setMedia:(NSObject*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSObject *media;
#endif

//- (BOOL)validateMedia:(id*)value_ error:(NSError**)error_;



- (NSNumber*)longDescriptionPriority;
- (void)setLongDescriptionPriority:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *longDescriptionPriority;
#endif

- (int)longDescriptionPriorityValue;
- (void)setLongDescriptionPriorityValue:(int)value_;

//- (BOOL)validateLongDescriptionPriority:(id*)value_ error:(NSError**)error_;



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



- (NSNumber*)flag2;
- (void)setFlag2:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *flag2;
#endif

- (BOOL)flag2Value;
- (void)setFlag2Value:(BOOL)value_;

//- (BOOL)validateFlag2:(id*)value_ error:(NSError**)error_;



- (NSDecimalNumber*)manworkIncidence;
- (void)setManworkIncidence:(NSDecimalNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDecimalNumber *manworkIncidence;
#endif

//- (BOOL)validateManworkIncidence:(id*)value_ error:(NSError**)error_;




- (NSSet*)analisysRows;
- (void)addAnalisysRows:(NSSet*)value_;
- (void)removeAnalisysRows:(NSSet*)value_;
- (void)addAnalisysRowsObject:(MOAnalisys*)value_;
- (void)removeAnalisysRowsObject:(MOAnalisys*)value_;
- (NSMutableSet*)analisysRowsSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* analisysRows;
#endif



- (NSSet*)partRows;
- (void)addPartRows:(NSSet*)value_;
- (void)removePartRows:(NSSet*)value_;
- (void)addPartRowsObject:(MOPartRows*)value_;
- (void)removePartRowsObject:(MOPartRows*)value_;
- (NSMutableSet*)partRowsSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* partRows;
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



- (NSSet*)playlists;
- (void)addPlaylists:(NSSet*)value_;
- (void)removePlaylists:(NSSet*)value_;
- (void)addPlaylistsObject:(MOPlaylists*)value_;
- (void)removePlaylistsObject:(MOPlaylists*)value_;
- (NSMutableSet*)playlistsSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* playlists;
#endif



- (NSSet*)analisysReference;
- (void)addAnalisysReference:(NSSet*)value_;
- (void)removeAnalisysReference:(NSSet*)value_;
- (void)addAnalisysReferenceObject:(MOAnalisys*)value_;
- (void)removeAnalisysReferenceObject:(MOAnalisys*)value_;
- (NSMutableSet*)analisysReferenceSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* analisysReference;
#endif



- (MOCategories*)category;
- (void)setCategory:(MOCategories*)value_;
//- (BOOL)validateCategory:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOCategories* category;
#endif


@end

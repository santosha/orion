#import "_MOPrices.h"

@interface MOPrices : _MOPrices {}

- (NSString*)longDescriptionText;
- (NSImage*) childrenImage;
- (MOPrices*) duplicateWithManagedObjectContext:(NSManagedObjectContext*)context createCategory:(BOOL)createCategory;

+ (MOPrices*) priceForURIRepresentation:(NSURL*)uri andStoreURL:(NSURL*)storeURL;
+ (NSArray*) pricesFromPasteboard:(NSPasteboard*)pboard managedObjectContext:(NSManagedObjectContext*)context;

+ (void) copyArray:(NSArray*)array toPasteboard:(NSPasteboard*)pboard;
+ (MOPrices*) findByCode:(NSString*)code context:(NSManagedObjectContext*)context;
+ (MOPrices*) findByImportCode:(NSString*)code context:(NSManagedObjectContext*)context;

- (NSString*) nextNumberForCode:(NSString*)code insert:(BOOL)insert;

@end

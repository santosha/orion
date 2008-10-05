#import "_MOCategories.h"

@interface MOCategories : _MOCategories {}

- (MOCategories*) duplicateWithManagedObjectContext:(NSManagedObjectContext*)context copyPrices:(BOOL)copyPrices;
- (NSImage*) image;

+ (MOCategories*) findByCode:(NSString*)code context:(NSManagedObjectContext*)context;

@end

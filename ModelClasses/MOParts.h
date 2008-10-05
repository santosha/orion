#import "_MOParts.h"

@interface MOParts : _MOParts {}

+ (MOParts*) findByName:(NSString*)code context:(NSManagedObjectContext*)context useLike:(BOOL)useLike;
+ (void) copyArray:(NSArray*)array toPasteboard:(NSPasteboard*)pboard;
+ (NSArray*) partsFromPasteboard:(NSPasteboard*)pboard managedObjectContext:(NSManagedObjectContext*)context;

@end

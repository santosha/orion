#import "_MOAnalisys.h"

@interface MOAnalisys : _MOAnalisys {}

- (NSString*) code;
- (void) setCode:(NSString*)code;
- (NSString*) description;
- (void) setDescription:(NSString*)description;
- (NSDecimalNumber*) unitPrice;
- (void) setUnitPrice:(NSDecimalNumber*)unitPrice;


- (MOAnalisys*) duplicateWithManagedObjectContext:(NSManagedObjectContext*)context;

@end

#import "MOPartRows.h"
#import "MOMeasures.h"

@implementation MOPartRows

- (NSNumber*)quantity 
{
	[self willAccessValueForKey:@"quantity"];
	
	double result = 0;
	
	if( [self measures] )
	{
		for( MOMeasures* measure in [self measures] )
			result += [[measure quantity] doubleValue]; 
	}
	else
		result = [[self primitiveValueForKey:@"quantity"] doubleValue];
	
	[self didAccessValueForKey:@"quantity"];
	return [NSNumber numberWithDouble:result];
}

- (NSDecimalNumber*)totalPrice 
{
	[self willAccessValueForKey:@"totalPrice"];
	
	NSNumber* result;
	
	if( [self price] )
	{
		result = [NSDecimalNumber numberWithDouble:[[[self price] price] doubleValue] * [[self quantity] doubleValue]];
	}
	else
		result = [NSDecimalNumber numberWithDouble:0.0];
	
	[self didAccessValueForKey:@"totalPrice"];

	return (NSDecimalNumber*)result;
}

@end

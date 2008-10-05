#import "MOProjects.h"

@implementation MOProjects

+ (MOProjects*) firstProjectInManagedObjectContext:(NSManagedObjectContext*)context
{
	NSFetchRequest* req = [[NSFetchRequest alloc] init];
	[req setEntity:[NSEntityDescription entityForName:@"Projects" inManagedObjectContext:context]];
	
	NSArray* projects = [context executeFetchRequest:req error:nil];
	[req release];
	
	if( [projects count] > 0 )
		return [projects objectAtIndex:0];
	
	return nil;
}

@end

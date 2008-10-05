//
//  TagsTransformer.m
//  Lyra
//
//  Created by Michele Longhi on 05/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "UMTransformer.h"


@implementation UMTransformer

+ (Class)transformedValueClass 
{ 
	return [NSString class]; 
}

+ (BOOL)allowsReverseTransformation 
{ 
	return YES; 
}

- (id)transformedValue:(id)value 
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	
	NSArray* ums = [ud valueForKey:@"um"];
	for( NSDictionary* item in ums )
	{
		if( [(NSString*)[item valueForKey:@"key"] isCaseInsensitiveLike:value] )
		{
			return [item valueForKey:@"name"];
		}
	}
	
	return value;
}

- (id)reverseTransformedValue:(id)value
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	
	NSArray* ums = [ud valueForKey:@"um"];
	for( NSDictionary* item in ums )
	{
		if( [(NSString*)[item valueForKey:@"name"] isCaseInsensitiveLike:value] )
		{
			return [item valueForKey:@"key"];
		}
	}
	
	return value;
}

@end

//
//  DocumentController.m
//  Orion
//
//  Created by Michele Longhi on 17/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "DocumentController.h"


@implementation DocumentController

// Determina il documento predefinito

- (NSString *)defaultType
{
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	
	int i = [ud integerForKey:@"defaultDataFormat"];
	
	NSString* type = @"OrionProject";
	
	if( i == 1 )
		type = @"OrionProjectXML";
	
	return type;
}

- (NSString *)displayNameForType:(NSString *)documentTypeName
{
	return NSLocalizedString(documentTypeName,nil);
}

@end

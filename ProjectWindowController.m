//
//  ProjectWindowController.m
//  Orion
//
//  Created by Michele Longhi on 17/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "ProjectWindowController.h"
#import "AppController.h"

@implementation ProjectWindowController

- (NSString *)windowTitleForDocumentDisplayName:(NSString *)displayName
{
	NSString* result = displayName;
	
	result = [displayName stringByReplacingOccurrencesOfString:@"senza titolo" withString:@"Progetto senza nome"];
	result = [result stringByReplacingOccurrencesOfString:@"Senza titolo" withString:@"Progetto senza nome"];
	
	if( ![AppController isLicensed] )
		result = [result stringByAppendingFormat:@" (Versione dimostrativa)"];

	return result;	
}

@end

//
//  PricesWindowController.m
//  Orion
//
//  Created by Michele Longhi on 17/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "PricesWindowController.h"
#import "AppController.h"

@implementation PricesWindowController

- (NSString *)windowTitleForDocumentDisplayName:(NSString *)displayName
{
	NSString* result = displayName;
	
	result = [displayName stringByReplacingOccurrencesOfString:@"senza titolo" withString:@"Prezzario senza nome"];
	result = [result stringByReplacingOccurrencesOfString:@"Senza titolo" withString:@"Prezzario senza nome"];
	
	if( ![AppController isLicensed] )
		result = [result stringByAppendingFormat:@" (Versione dimostrativa)"];
	
	return result;
}

@end
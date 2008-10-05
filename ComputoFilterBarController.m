//
//  ComputoFilterBarController.m
//  Orion
//
//  Created by Michele Longhi on 25/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "ComputoFilterBarController.h"

@implementation ComputoFilterBarController

@synthesize viewMode;

- (id) init
{
	if( [super init] )
	{
	}
	
	return self;
}

- (void) awakeFromNib
{
	[super initWithDefaults];

	[self setViewMode:1];
}

@end

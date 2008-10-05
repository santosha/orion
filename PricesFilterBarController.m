//
//  PricesFilterBarController.m
//  Orion
//
//  Created by Michele Longhi on 21/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "PricesFilterBarController.h"


@implementation PricesFilterBarController

@synthesize showAnalisys,showWarnings,showElements;

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
	
	[self setShowAnalisys:YES];
	[self setShowWarnings:YES];
	[self setShowElements:YES];
}

@end

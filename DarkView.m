//
//  DarkView.m
//  Orion
//
//  Created by Michele Longhi on 13/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "DarkView.h"


@implementation DarkView

- (id)initWithFrame:(NSRect)frame 
{
    self = [super initWithFrame:frame];

    return self;
}

- (void) dealloc
{
	[gradient release];
	
	[super dealloc];
}

- (void) awakeFromNib
{
	gradient = [[NSGradient alloc] initWithColorsAndLocations:
							[NSColor blackColor], (CGFloat)-0.05,
							[NSColor colorWithCalibratedRed:0.38 green:0.404 blue:0.471 alpha:1],(CGFloat)0.07,
							[NSColor colorWithCalibratedRed:0.482 green:0.525 blue:0.592 alpha:1],(CGFloat)0.8,
							nil];
}

- (void)drawRect:(NSRect)rect 
{
	[gradient drawInRect:[self bounds] angle:270];
}

@end

//
//  LightView.m
//  Orion
//
//  Created by Michele Longhi on 13/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "LightView.h"


@implementation LightView

- (id)initWithFrame:(NSRect)frame 
{
    self = [super initWithFrame:frame];
    if (self) 
	{
        // Initialization code here.
    }
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
				[NSColor colorWithCalibratedRed:0.918 green:0.918 blue:0.918 alpha:1],(CGFloat)0,
				[NSColor colorWithCalibratedRed:0.82 green:0.82 blue:0.82 alpha:1],(CGFloat)1,
				nil];	
}

- (void)drawRect:(NSRect)rect 
{
	[gradient drawInRect:[self bounds] angle:270];
}

@end

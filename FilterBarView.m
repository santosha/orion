//
//  FilterBarView.m
//  Orion
//
//  Created by Michele Longhi on 21/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "FilterBarView.h"


@implementation FilterBarView

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
				[NSColor colorWithCalibratedRed:0.6 green:0.6 blue:0.6 alpha:1],(CGFloat)0,
				[NSColor colorWithCalibratedRed:0.9 green:0.9 blue:0.9 alpha:1],(CGFloat)1,
				nil];
}

- (void)drawRect:(NSRect)rect 
{
	
	[gradient drawInRect:[self bounds] angle:90];
	
	NSBezierPath* path = [NSBezierPath bezierPath];
	
	[path moveToPoint:NSMakePoint(0,0)];
	[path lineToPoint:NSMakePoint([self bounds].size.width,0)];
	[path setLineWidth:1.0];
	[[NSColor blackColor] set];
	// [path stroke];
	
}

@end

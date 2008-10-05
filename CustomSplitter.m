//
//  CustomSplitter.m
//  Orion
//
//  Created by Michele Longhi on 13/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "CustomSplitter.h"


@implementation CustomSplitter

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
				[NSColor colorWithCalibratedRed:0.4 green:0.4 blue:0.4 alpha:1],(CGFloat)0,
				[NSColor colorWithCalibratedRed:0.8 green:0.8 blue:0.8 alpha:1],(CGFloat)0.25,
				[NSColor colorWithCalibratedRed:1 green:1 blue:1 alpha:1],(CGFloat)1,
				nil];
}

- (void)drawRect:(NSRect)rect 
{
    [super drawRect:rect];
}

- (void)drawDividerInRect:(NSRect)aRect
{
	[[NSColor blackColor] set];
	[NSBezierPath fillRect:aRect];
	
	[gradient drawInRect:aRect angle:270];

	path = [[NSBezierPath alloc] init];
	[path setLineWidth:0.5];

	[path moveToPoint:NSMakePoint(aRect.origin.x,aRect.origin.y)];
	[path lineToPoint:NSMakePoint(aRect.origin.x+aRect.size.width,aRect.origin.y)];
	[[NSColor blackColor] set];
	[path stroke];
	
	[super drawDividerInRect:aRect];
}
		
@end

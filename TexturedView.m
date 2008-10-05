//
//  TexturedView.m
//  Orion
//
//  Created by Michele Longhi on 21/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "TexturedView.h"


@implementation TexturedView

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
				[NSColor colorWithCalibratedRed:0.588 green:0.588 blue:0.588 alpha:1],(CGFloat)0,
				[NSColor colorWithCalibratedRed:0.741 green:0.741 blue:0.741 alpha:1],(CGFloat)1,
				nil];
}

- (void)drawRect:(NSRect)rect 
{
    // Drawing code here.
	
	int h = 32;
	
	NSRect bottomRect = NSMakeRect(0,0,[self bounds].size.width,h-2);
	
	[gradient drawInRect:bottomRect angle:90];
	
	NSBezierPath* path = [NSBezierPath bezierPath];
	
	[path moveToPoint:NSMakePoint(0, h-1)];
	[path lineToPoint:NSMakePoint(bottomRect.size.width,h-1)];
	[path setLineWidth:1];
	[[NSColor whiteColor] set];
	[path stroke];
	
	path = [NSBezierPath bezierPath];
	[path moveToPoint:NSMakePoint(0, h)];
	[path lineToPoint:NSMakePoint(bottomRect.size.width,h)];
	[path setLineWidth:1];
	[[NSColor blackColor] set];
	[path stroke];
}

@end

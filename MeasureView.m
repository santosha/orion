//
//  MeasureView.m
//  Orion
//
//  Created by Michele Longhi on 21/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "MeasureView.h"


@implementation MeasureView

- (id)initWithFrame:(NSRect)frame 
{
    self = [super initWithFrame:frame];
    if (self) 
	{
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)rect 
{
	[[NSColor colorWithCalibratedRed:0 green:0 blue:0 alpha:1] set];
	
	NSBezierPath* path = [NSBezierPath bezierPathWithRoundedRect:[self frame] xRadius:10 yRadius:10];
	
	[path fill];
	
	[path setLineWidth:2.0];	
	[[NSColor whiteColor] set];
	[path stroke];
}

@end

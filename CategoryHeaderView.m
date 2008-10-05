//
//  CategoryHeaderView.m
//  Orion
//
//  Created by Michele Longhi on 18/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "CategoryHeaderView.h"


@implementation CategoryHeaderView

@synthesize mode;

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
	[p release];
	
	[super dealloc];
}

- (void) awakeFromNib
{
	gradient = [[NSGradient alloc] initWithColorsAndLocations:
				[NSColor colorWithCalibratedRed:0.6 green:0.6 blue:0.6 alpha:1],(CGFloat)0,
				[NSColor colorWithCalibratedRed:0.9 green:0.9 blue:0.9 alpha:1],(CGFloat)1,
				nil];
	
	f = [NSFont boldSystemFontOfSize:11];
	
	p = [[NSMutableParagraphStyle alloc] init];
	[p setAlignment:NSCenterTextAlignment];
	
}

- (void)drawRect:(NSRect)rect 
{
    // Disegna la barra superiore della header
	
	NSRect barRect = NSMakeRect(0,[self bounds].size.height-18,[self bounds].size.width,18);
	[gradient drawInRect:barRect angle:90];
	
	NSString* title;
	
	switch ([self mode]) 
	{
		case 0:
			title = @"Categorie Prezzi";
			break;
		case 1:
			title = @"Sezioni Progetto";
			break;
		case 2:
			title = @"Collezioni";
			break;
	}
	
	NSBezierPath* path = [[NSBezierPath alloc] init];
	[[NSColor blackColor] set];
	[path setLineWidth:1];	
	[path moveToPoint:NSMakePoint(0,barRect.origin.y)];
	[path lineToPoint:NSMakePoint(barRect.size.width,barRect.origin.y)];
	[path stroke];
	[path release];
	
	dic = [NSMutableDictionary dictionary];
	[dic setObject:[NSColor blackColor] forKey:NSForegroundColorAttributeName];
	[dic setObject:f forKey:NSFontAttributeName];
	[dic setObject:p forKey:NSParagraphStyleAttributeName];
	
	barRect.origin.y -= 2;
	[title drawInRect:barRect withAttributes:dic];

}

@end

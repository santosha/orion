//
//  CustomTableView.m
//  Orion
//
//  Created by Michele Longhi on 25/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "AdvancedTableView.h"


@implementation AdvancedTableView

- (void)keyDown:(NSEvent *)theEvent
{
	if( [self delegate] )
	{
		if( [[self delegate] respondsToSelector:@selector(keyPressed:)] )
		{
			if( [[self delegate] performSelector:@selector(keyPressed:) withObject:[NSNumber numberWithInt:[theEvent keyCode]]] )
				return;
		}
	}
	
	[super keyDown:theEvent];
}

- (void) mouseDown:(NSEvent*)theEvent
{
	if( [[self delegate] respondsToSelector:@selector(mouseDownClickCount:)] )
	{
		if( [[self delegate] performSelector:@selector(mouseDownClickCount:) withObject:[NSNumber numberWithInt:[theEvent clickCount]]] )
			return;
	}
	
	[super mouseDown:theEvent];
}

@end

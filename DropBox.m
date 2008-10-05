//
//  DropBox.m
//  Lyra
//
//  Created by Michele Longhi on 02/06/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "DropBox.h"


@implementation DropBox

- (id)initWithFrame:(NSRect)frame 
{
    self = [super initWithFrame:frame];
    if (self) 
	{
        _delegate = nil;
    }
    return self;
}

- (void) awakeFromNib
{
	// [self registerForDraggedTypes:[NSArray arrayWithObjects:@"LyraRubricaDataType",nil] ]; 
}

- (void)drawRect:(NSRect)rect 
{
    [super drawRect:rect];
}

- (BOOL)prepareForDragOperation:(id < NSDraggingInfo >)sender
{
	if( _delegate )
	{
		return [_delegate prepareForDragOperation:sender];
	}

	return NO;
}

- (NSDragOperation)draggingEntered:(id <NSDraggingInfo>)sender
{
	if( _delegate )
	{
		return [_delegate draggingEntered:sender];
	}
	
	return NSDragOperationNone;
}

- (BOOL)performDragOperation:(id < NSDraggingInfo >)sender
{
	BOOL result = NO;
	
	if( _delegate )
	{
		result = [_delegate performDragOperation:sender];
			}
	
	return result;
}

- (void)concludeDragOperation:(id <NSDraggingInfo>)sender 
{
    [self setNeedsDisplay:YES];
}

- (void) setDelegate:(id)delegate
{
	_delegate = delegate;
}

- (id) delegate
{
	return _delegate;
}


@end

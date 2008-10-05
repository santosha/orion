/*
    ImageAndTextCell.m
    Copyright (c) 2001-2006, Apple Computer, Inc., all rights reserved.
    Author: Chuck Pisula

    Milestones:
    * 03-01-2001: Initial creation by Chuck Pisula
    * 11-04-2005: Added hitTestForEvent:inRect:ofView: for better NSOutlineView support by Corbin Dunn

    Subclass of NSTextFieldCell which can display text and an image simultaneously.
*/

#import "CategoryCell.h"
#import <AppKit/NSCell.h>

@implementation CategoryCell

@synthesize code,isChild;

- (id)init 
{
    if (self = [super init]) 
	{
        [self setLineBreakMode:NSLineBreakByTruncatingTail];
        [self setSelectable:YES];
    }
    return self;
}

- (void)dealloc 
{
    [image release];
    [super dealloc];
}

- (id)copyWithZone:(NSZone *)zone 
{
    CategoryCell *cell = (CategoryCell *)[super copyWithZone:zone];
    // The image ivar will be directly copied; we need to retain or copy it.
    cell->image = [image retain];
    return cell;
}

- (void)setImage:(NSImage *)anImage 
{
    if (anImage != image) {
        [image release];
        image = [anImage retain];
    }
}

- (NSImage *)image 
{
    return image;
}

- (NSRect)imageRectForBounds:(NSRect)cellFrame 
{
    NSRect result;
    if (image != nil) 
	{
        result.size = [image size];
        result.origin = cellFrame.origin;
        result.origin.x += 3;
        result.origin.y += ceil((cellFrame.size.height - result.size.height) / 2);
    } else 
	{
        result = NSZeroRect;
    }
    return result;
}

// We could manually implement expansionFrameWithFrame:inView: and drawWithExpansionFrame:inView: or just properly implement titleRectForBounds to get expansion tooltips to automatically work for us
- (NSRect)titleRectForBounds:(NSRect)cellFrame 
{
    NSRect result;
    if (image != nil) 
	{
        CGFloat imageWidth = [image size].width;
        result = cellFrame;
        result.origin.x += (3 + imageWidth);
        result.size.width -= (3 + imageWidth);
    } else 
	{
        result = NSZeroRect;
    }
    return result;
}

/*
- (void)editWithFrame:(NSRect)aRect inView:(NSView *)controlView editor:(NSText *)textObj delegate:(id)anObject event:(NSEvent *)theEvent 
{
    NSRect textFrame, imageFrame;
	
    NSDivideRect (aRect, &imageFrame, &textFrame, 3 + [image size].width, NSMinXEdge);

	
	
    [super editWithFrame: textFrame inView: controlView editor:textObj delegate:anObject event: theEvent];
}
 */

- (void)editWithFrame:(NSRect)aRect inView:(NSView *)controlView editor:(NSText *)textObj delegate:(id)anObject event:(NSEvent *)theEvent
{
	aRect.origin.x += 10;
	
	[super editWithFrame:aRect inView:controlView editor:textObj delegate:anObject event:theEvent];
}

- (void)selectWithFrame:(NSRect)aRect inView:(NSView *)controlView editor:(NSText *)textObj delegate:(id)anObject start:(NSInteger)selStart length:(NSInteger)selLength 
{
    NSRect textFrame, imageFrame;
    NSDivideRect (aRect, &imageFrame, &textFrame, 3 + [image size].width, NSMinXEdge);
    [super selectWithFrame: textFrame inView: controlView editor:textObj delegate:anObject start:selStart length:selLength];
}

- (void)drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView 
{

	// Disegna il codice
	if( [self code] )
	{
		NSRect coderect = NSMakeRect(cellFrame.origin.x + cellFrame.size.width-30,cellFrame.origin.y + 5,27,15);
		NSBezierPath* path = [NSBezierPath bezierPathWithRoundedRect:coderect xRadius:7 yRadius:7];
		[[NSColor colorWithCalibratedRed:0.541 green:0.596 blue:0.659 alpha:1] set];
		[path fill];
		NSFont* f = [NSFont boldSystemFontOfSize:10];
		NSMutableParagraphStyle* p = [[[NSMutableParagraphStyle alloc] init] autorelease];
		[p setAlignment:NSCenterTextAlignment];
		NSMutableDictionary* dic = [NSMutableDictionary dictionary];
		[dic setObject:[NSColor whiteColor] forKey:NSForegroundColorAttributeName];
		[dic setObject:f forKey:NSFontAttributeName];
		[dic setObject:p forKey:NSParagraphStyleAttributeName];
		coderect.origin.y += 1;
		[[self code] drawInRect:coderect withAttributes:dic];
	}
	
    if (image != nil) 
	{
        NSRect	imageFrame;
        NSSize imageSize = [image size];
        NSDivideRect(cellFrame, &imageFrame, &cellFrame, 3 + imageSize.width, NSMinXEdge);
        if ([self drawsBackground]) 
		{
            [[self backgroundColor] set];
            NSRectFill(imageFrame);
        }
        imageFrame.origin.x += 0;
        imageFrame.size = imageSize;

        if ([controlView isFlipped])
            imageFrame.origin.y += ceil((cellFrame.size.height + imageFrame.size.height) / 2);
        else
            imageFrame.origin.y += ceil((cellFrame.size.height - imageFrame.size.height) / 2);

        [image compositeToPoint:imageFrame.origin operation:NSCompositeSourceOver];
    }
	
	
	cellFrame.origin.y += 4;
	cellFrame.size.width -= 25;
	
    [super drawWithFrame:cellFrame inView:controlView];
}

- (NSSize)cellSize 
{
    NSSize cellSize = [super cellSize];
    cellSize.width += (image ? [image size].width : 0) + 3;
    return cellSize;
}

- (NSUInteger)hitTestForEvent:(NSEvent *)event inRect:(NSRect)cellFrame ofView:(NSView *)controlView {
    NSPoint point = [controlView convertPoint:[event locationInWindow] fromView:nil];
    // If we have an image, we need to see if the user clicked on the image portion.
    if (image != nil) 
	{
        // This code closely mimics drawWithFrame:inView:
        NSSize imageSize = [image size];
        NSRect imageFrame;
        NSDivideRect(cellFrame, &imageFrame, &cellFrame, 3 + imageSize.width, NSMinXEdge);
        
        imageFrame.origin.x += 3;
        imageFrame.size = imageSize;
        // If the point is in the image rect, then it is a content hit
        if (NSMouseInRect(point, imageFrame, [controlView isFlipped])) 
		{
            // We consider this just a content area. It is not trackable, nor it it editable text. If it was, we would or in the additional items.
            // By returning the correct parts, we allow NSTableView to correctly begin an edit when the text portion is clicked on.
            return NSCellHitContentArea;
        }        
    }
    // At this point, the cellFrame has been modified to exclude the portion for the image. Let the superclass handle the hit testing at this point.
    return [super hitTestForEvent:event inRect:cellFrame ofView:controlView];    
}


@end


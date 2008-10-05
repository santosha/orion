//
//  NSTokenAttachmentCell.h
//  Orion
//
//  Created by Michele Longhi on 23/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSTokenAttachmentCell : NSTextAttachmentCell
{
    id _representedObject;
    id _textColor;
    id _reserved;
    struct 
	{
        unsigned int _selected:1;
        unsigned int _edgeStyle:2;
        unsigned int _reserved:29;
    } _tacFlags;
}

+ (void)initialize;
- (id)initTextCell:(id)fp8;
- (id)init;
- (void)dealloc;
- (id)representedObject;
- (void)setRepresentedObject:(id)fp8;
- (int)interiorBackgroundStyle;
- (BOOL)_hasMenu;
- (id)tokenForegroundColor;
- (id)tokenBackgroundColor;
- (id)textColor;
- (void)setTextColor:(id)fp8;
- (id)pullDownImage;
- (id)menu;
- (struct _NSSize)cellSizeForBounds:(struct _NSRect)fp8;
- (struct _NSSize)cellSize;
- (struct _NSRect)drawingRectForBounds:(struct _NSRect)fp8;
- (struct _NSRect)titleRectForBounds:(struct _NSRect)fp8;
- (struct _NSRect)cellFrameForTextContainer:(id)fp8 proposedLineFragment:(struct _NSRect)fp12 glyphPosition:(struct _NSPoint)fp28 characterIndex:(unsigned int)fp36;
- (struct _NSPoint)cellBaselineOffset;
- (struct _NSRect)pullDownRectForBounds:(struct _NSRect)fp8;
- (void)drawTokenWithFrame:(struct _NSRect)fp8 inView:(id)fp24;
- (void)drawInteriorWithFrame:(struct _NSRect)fp8 inView:(id)fp24;
- (void)drawWithFrame:(struct _NSRect)fp8 inView:(id)fp24;
- (void)drawWithFrame:(struct _NSRect)fp8 inView:(id)fp24 characterIndex:(unsigned int)fp28 layoutManager:(id)fp32;
- (void)encodeWithCoder:(id)fp8;
- (id)initWithCoder:(id)fp8;
- (BOOL)wantsToTrackMouseForEvent:(id)fp8 inRect:(struct _NSRect)fp12 ofView:(id)fp28 atCharacterIndex:(unsigned int)fp32;
- (BOOL)trackMouse:(id)fp8 inRect:(struct _NSRect)fp12 ofView:(id)fp28 atCharacterIndex:(unsigned int)fp32 untilMouseUp:(BOOL)fp36;
	
@end

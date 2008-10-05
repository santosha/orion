//
//  NSMeasureFieldCell.m
//  Orion
//
//  Created by Michele Longhi on 23/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "NSMeasureFieldCell.h"
#import "NSTokenAttachment.h"
#import "NSTokenAttachmentCell.h"

@implementation NSMeasureFieldCell

- (void) setupCell:(NSManagedObject*)object;
{
	NSMutableAttributedString* as = [[NSMutableAttributedString alloc] init];
	NSMutableAttributedString* as1 = [[NSMutableAttributedString alloc] init];
	NSMutableAttributedString* as2 = [[NSMutableAttributedString alloc] init];
	NSMutableAttributedString* as3 = [[NSMutableAttributedString alloc] init];
	
	NSTokenAttachment* ta1 = [[NSTokenAttachment alloc] init];
	[as1 appendAttributedString:[[NSAttributedString alloc] initWithString:@"Lungh.:"]];
//	[as1 addAttribute:NSFontAttributeName value:[NSFont controlContentFontOfSize: 10.0] range: NSMakeRange(0, [as1 length])];
	[(NSTokenAttachmentCell *)[ta1 attachmentCell] setAttributedStringValue:as1];
	[as appendAttributedString:[NSAttributedString attributedStringWithAttachment:ta1]];
	[as appendAttributedString:[[NSAttributedString alloc] initWithString:@"0,00 "]];
	
	NSTokenAttachment* ta2 = [[NSTokenAttachment alloc] init];
	[as2 appendAttributedString:[[NSAttributedString alloc] initWithString:@"Largh.:"]];
//	[as2 addAttribute:NSFontAttributeName value:[NSFont controlContentFontOfSize: 10.0] range: NSMakeRange(0, [as2 length])];
	[(NSTokenAttachmentCell *)[ta2 attachmentCell] setAttributedStringValue:as2];
	[as appendAttributedString:[NSAttributedString attributedStringWithAttachment:ta2]];
	[as appendAttributedString:[[NSAttributedString alloc] initWithString:@"0,00 "]];

	NSTokenAttachment* ta3 = [[NSTokenAttachment alloc] init];
	[as3 appendAttributedString:[[NSAttributedString alloc] initWithString:@"Alt.:"]];
	//	[as2 addAttribute:NSFontAttributeName value:[NSFont controlContentFontOfSize: 10.0] range: NSMakeRange(0, [as2 length])];
	[(NSTokenAttachmentCell *)[ta3 attachmentCell] setAttributedStringValue:as3];
	[as appendAttributedString:[NSAttributedString attributedStringWithAttachment:ta3]];
	[as appendAttributedString:[[NSAttributedString alloc] initWithString:@"0,00 "]];
	
	[self setImportsGraphics:YES];
	[self setEditable:NO];
	[self setAllowsEditingTextAttributes:YES];
	[self setRefusesFirstResponder:NO];
	
	[self setAttributedStringValue:as ];
	[self setAction:@selector(doAction:)];
	[self setTarget:self];
	[self sendsActionOnEndEditing];
	[as beginEditing];
	
//	[as addAttribute:NSFontAttributeName value:[NSFont controlContentFontOfSize: 8.0] range: NSMakeRange(0, [as length])];
	
	[as endEditing];
	
	
}

- (IBAction) doAction:(id)sender
{
	NSLog(@"Action");
}

- (void)keyDown:(NSEvent *)theEvent
{
	NSLog(@"Key down");
}

- (BOOL)acceptsFirstResponder
{
	return YES;
}

- (void)setDoubleValue:(double)aDouble
{
	NSLog(@"Imposta il valore");
}

@end

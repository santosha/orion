//
//  SubviewCell.h
//  Orion
//
//  Created by Michele Longhi on 21/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MeasureCell2 : NSCell 
{
	@private
	IBOutlet NSView *subview;
	
	int valuesCount;
	NSMutableArray* valuesLabels;
	NSMutableArray* valuesFields;
	NSMutableArray* values;
	NSView* totalLabel;
	NSView* totalField;
}

- (void) addSubview:(NSView *) view;
- (void) addSubviewFromNib:(NSString*)nibName;
- (void) setupCell;

@end

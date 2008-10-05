//
//  SubviewCell.m
//  Orion
//
//  Created by Michele Longhi on 21/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "MeasureCell2.h"


@implementation MeasureCell2


- (void) addSubview:(NSView *) view
{
	subview = view;
}

- (void) addSubviewFromNib:(NSString*)nibName
{
	[NSBundle loadNibNamed:nibName owner:self];
}

- (void) setupCell
{
	valuesCount = 3;
	
	// Etichette
	valuesLabels = [NSMutableArray array];
	for( int i=0 ; i<valuesCount ; i++ )
	{
		NSTextField* label = [[NSTextField alloc] init];
		[label setStringValue:[NSString stringWithFormat:@"Val%d",i]];
		[label setFont:[NSFont systemFontOfSize:8]];
		[label setAlignment:NSRightTextAlignment];
		[label setBezeled:NO];
		[label setDrawsBackground:NO];
		
		[valuesLabels addObject:label];
	}
	
	// Campi
	valuesFields = [NSMutableArray array];
	for( int i=0 ; i<valuesCount ; i++ )
	{
		int x = i*(40+60+10)+40;
		NSTextField* label = [[NSTextField alloc] init];
		[label setStringValue:[NSString stringWithFormat:@"Val%d",i]];
		[label setFont:[NSFont systemFontOfSize:8]];
		[label setAlignment:NSRightTextAlignment];
		[label setEditable:YES];
		[label setFrame:NSMakeRect(x,0,60,20)];
		
		[valuesFields addObject:label];
		[[self controlView] addSubview:label];
	}
	
	// Totale
	{
		int x = valuesCount*(40+60+10)+40;
		NSTextField* label = [[NSTextField alloc] init];
		[label setStringValue:@"0,00"];
		[label setFont:[NSFont systemFontOfSize:8]];
		[label setAlignment:NSRightTextAlignment];
		[label setBezeled:YES];
		[label setBezelStyle:NSTextFieldRoundedBezel];
		[label setFrame:NSMakeRect(x, 0, 80, 20)];
		
		totalField = label;
		[[self controlView] addSubview:label];
	}
	
}

- (NSView*) view
{
	return subview;
}

- (void) drawWithFrame:(NSRect) cellFrame inView:(NSView *) controlView
{
	[super drawWithFrame: cellFrame inView: controlView];

	[[self view] setFrame: cellFrame];
	
	if ([[self view] superview] != controlView)
	{
		/*
		int i=0;
		for( NSView* v in valuesLabels )
		{
			int x = i++*(40+60+10);
			[v setFrame:NSMakeRect(cellFrame.origin.x+x,cellFrame.origin.y,40,20)];
			[controlView addSubview:v];
		}
		
		i=0;
		for( NSView* v in valuesFields )
		{
			int x = i++*(40+60+10)+40;
			[v setFrame:NSMakeRect(cellFrame.origin.x+x,cellFrame.origin.y,60,20)];
			[controlView addSubview:v];
		}
		
		{
			int x = valuesCount*(40+60+10)+40;
			[totalField setFrame:NSMakeRect(cellFrame.origin.x+x,cellFrame.origin.y,80,20)];
			[controlView addSubview:totalField];
		}
		 */
		[controlView addSubview:[self view]];
	}
	[controlView setNeedsDisplay:YES];
}

@end

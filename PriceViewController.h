//
//  PriceViewController.h
//  Orion
//
//  Created by Michele Longhi on 16/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MOPrices.h"
#import "MeasurePanel.h"
#import "NSMeasureFieldCell.h"

@interface PriceViewController : NSViewController 
{
	IBOutlet NSArrayController* analisiController;
	IBOutlet NSTableView* analisiTableView;
	IBOutlet NSMeasureFieldCell* measureCell;
	
	MeasurePanel* measurePanel;
	
}

- (NSManagedObjectContext*) managedObjectContext;

#pragma mark Methods

- (void) addToView:(NSView*)view;
- (IBAction) showMeasureEditor:(id)sender;
- (IBAction) closeMeasureEditor:(id)sender;

@end

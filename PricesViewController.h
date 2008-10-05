//
//  PricesViewController.h
//  Orion
//
//  Created by Michele Longhi on 12/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SidebarViewController.h"
#import "MainViewController.h"
#import "PriceViewController.h"

@interface PricesViewController : MainViewController
{
	// Outlets
	IBOutlet NSArrayController* arrayController;
	IBOutlet NSTreeController* treeController;
	IBOutlet NSArrayController* analisiArrayController;
	IBOutlet NSTextView* textView;
	IBOutlet NSTableView* tableView;
	IBOutlet NSView* priceView;
	
	// Properties
	NSArray* sortDescriptors;
	NSPredicate* searchPredicate;
	NSString* selectedCode;
	
	// View controllers
	PriceViewController* priceViewController;
}

#pragma mark Accessors
@property (assign,readonly) NSArray* sortDescriptors;

#pragma mark Methods
- (void) changedSearchPredicate:(NSPredicate*)searchPredicate;
- (void) requery;
- (void) requeryThread;
- (void) setupPredicate:(NSPredicate*)predicate;
- (void) addChildrenSubpredicatesOfCategory:(MOCategories*)cat toArray:(NSMutableArray*)array;

#pragma mark Actions
- (IBAction) addItem:(id)sender;
- (IBAction) removeItem:(id)sender;
- (IBAction) showHideInfoPanel:(id)sender;

@end

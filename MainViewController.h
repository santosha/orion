//
//  MainViewController.h
//  Orion
//
//  Created by Michele Longhi on 13/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SidebarViewController.h"
#import "FilterBarController.h"

@interface MainViewController :  NSViewController 
{
	// Outlets
	IBOutlet NSView* leftView;
	IBOutlet NSView* filterBar;
	IBOutlet NSView* mainView;
	IBOutlet NSView* containerView;
	
	// Properties
	int selectedItemsCount;
	int itemsCount;
	BOOL filterBarVisible;

	// View controllers
	SidebarViewController* sidebarController;
	FilterBarController* filterBarController;
}

#pragma mark Accessors
@property (assign,readonly) NSManagedObjectContext* managedObjectContext;
@property int selectedItemsCount;
@property int itemsCount;
@property BOOL filterBarVisible;



#pragma mark Methods
- (void) changedSearchPredicate:(NSPredicate*)searchPredicate;
- (void) refreshCounters;

#pragma mark Actions

@end

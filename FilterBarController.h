//
//  FilterBarController.h
//  Orion
//
//  Created by Michele Longhi on 21/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PredicateWindowController.h"
#import "SidebarViewController.h"

@interface FilterBarController : NSViewController
{
	BOOL showAllCategories;
	BOOL showOthers;
	
	PredicateWindowController* predicateWindowController;
	NSPredicate* customPredicate;
	
	BOOL isCustomPredicateApplied;
	
	SidebarViewController* sidebarViewController;
}

@property BOOL showAllCategories;
@property BOOL showOthers;
@property BOOL isCustomPredicateApplied;
@property (assign,readwrite) NSPredicate* customPredicate;
@property (assign,readwrite) SidebarViewController* sidebarViewController;

#pragma mark Methods

- (void) initWithDefaults;

#pragma mark Actions

- (IBAction) showPredicateEditor:(id)sender;

@end

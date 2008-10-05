//
//  ComputoViewController.h
//  Orion
//
//  Created by Michele Longhi on 13/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MainViewController.h"
#import "MOProjects.h"

@interface ComputoViewController : MainViewController
{
	IBOutlet NSTreeController* treeController;
	IBOutlet NSArrayController* partRowsController;
	IBOutlet NSArrayController* measuresController;
	
	IBOutlet NSOutlineView* outlineView;
	IBOutlet NSTableView* partRowsTableView;
	IBOutlet NSTableView* measuresTableView;
	
	NSWindow* projectWindow;
	
	NSPredicate* searchPredicate;
	
	NSArray* sortDescriptors;

}

@property (assign,readwrite) NSArray* sortDescriptors;

#pragma mark Methods

- (void) changedSearchPredicate:(NSPredicate*)searchPredicate;
- (BOOL) createNewProjectAndCallSelector:(SEL)sel;
- (void) showDetailsForProject:(MOProjects*)project callSelector:(SEL)sel;
- (void) projectPanelDidEnd:(NSOpenPanel *)panel returnCode:(int)returnCode  contextInfo:(void  *)contextInfo;
- (void) requery;

#pragma mark Actions
- (IBAction) addItem:(id)sender;
- (IBAction) removeItem:(id)sender;
- (IBAction) projectMergeParts:(id)sender;

@end

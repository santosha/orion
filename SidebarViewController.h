//
//  SidebarViewController.h
//  Orion
//
//  Created by Michele Longhi on 12/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

//
//	View controller di gestione della sidebar laterale con le categorie e collezioni
//

#import <Cocoa/Cocoa.h>
#import "CategoryHeaderView.h"
#import "PredicateWindowController.h"

@interface SidebarViewController : NSViewController 
{
	IBOutlet NSTreeController* treeController1;
	IBOutlet NSTreeController* treeController2;
	IBOutlet NSPredicateEditor* predicateEditor;
	
	IBOutlet NSSplitView* splitter;
	
	IBOutlet NSView* categoryOptions;
	
	IBOutlet NSView* predicateEditorView;
	
	IBOutlet NSWindow* categoryPanel;
	IBOutlet NSWindow* playlistPanel;
	IBOutlet NSWindow* smartPlaylistPanel;
	
	IBOutlet NSOutlineView* outlineView1;
	IBOutlet NSOutlineView* outlineView2;
	
	IBOutlet NSTextField* categoryName;
	IBOutlet NSTextField* playlistName;
	IBOutlet NSTextField* smartPlaylistName;
	
	IBOutlet CategoryHeaderView* categoryHeader1;
	IBOutlet CategoryHeaderView* categoryHeader2;
	
	int mode;
	int selectionMode;
	
	int editMode;
	BOOL optionsVisible;

	PredicateWindowController* predicateWindowController;
}

#pragma mark Accessors

@property (assign,readonly) NSManagedObjectContext* managedObjectContext;
@property (assign,readonly) NSTreeController* treeController1;
@property (assign,readonly) NSTreeController* treeController2;
@property (assign,readonly) id selectedCategory;
@property (assign,readonly) id selectedPlaylist;
@property int mode;
@property int selectionMode;
		
#pragma mark Methods

- (void) addNewSmartPlaylistNamed:(NSString*)name withPredicate:(NSPredicate*)predicate;
- (void) notifySelectionForItem:(int)itemIndex;

#pragma mark Actions

- (IBAction) addParentCategory:(id)sender;
- (IBAction) addChildCategory:(id)sender;
- (IBAction) removeCategory:(id)sender;
- (IBAction) removePlaylist:(id)sender;
- (IBAction) addPlaylistFolder:(id)sender;
- (IBAction) addPlaylist:(id)sender;
- (IBAction) addSmartPlaylist:(id)sender;

- (IBAction) showCategoryDetails:(id)sender;
- (IBAction) closeCategoryDetails:(id)sender;

- (IBAction) showPlaylistDetails:(id)sender;
- (IBAction) closePlaylistDetails:(id)sender;

- (IBAction) showSmartPlaylistDetails:(id)sender;
- (IBAction) closeSmatPlaylistDetails:(id)sender;

- (IBAction) editPlaylist:(id)sender;
- (IBAction) showHideOptions:(id)sender;

@end

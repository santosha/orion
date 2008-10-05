//
//  FilterBarController.m
//  Orion
//
//  Created by Michele Longhi on 21/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "FilterBarController.h"


@implementation FilterBarController

@synthesize showAllCategories,showOthers,customPredicate,isCustomPredicateApplied,sidebarViewController;

- (void) initWithDefaults
{
	[self setShowAllCategories:NO];
	[self setShowOthers:YES];
	[self setIsCustomPredicateApplied:NO];
}

- (void) awakeFromNib
{
	customPredicate = nil;
}

#pragma mark -
#pragma mark Actions

- (IBAction) showPredicateEditor:(id)sender
{
	if( ![self isCustomPredicateApplied] )
	{
		[self willChangeValueForKey:@"customPredicate"];
		[self didChangeValueForKey:@"customPredicate"];
		return;
	}
	
	if( !predicateWindowController )
		predicateWindowController = [[PredicateWindowController alloc] initWithWindowNibName:@"Predicates"];

	[predicateWindowController setPredicate:customPredicate];

	[NSApp beginSheet:[predicateWindowController window] 
	   modalForWindow:[[self view] window] 
		modalDelegate:self 
	   didEndSelector:@selector(predicateEditorDidEnd:returnCode:contextInfo:)
		  contextInfo:nil];
	
	[predicateWindowController setupView:nil forType:20];
}

- (void)predicateEditorDidEnd:(NSWindow *)sheet returnCode:(int)returnCode contextInfo:(void *)contextInfo
{
	if( [predicateWindowController newCollectionName] )
	{
		if( [self sidebarViewController] )
		{
			[[self sidebarViewController] addNewSmartPlaylistNamed:[predicateWindowController newCollectionName] withPredicate:[self customPredicate]];
			[self setIsCustomPredicateApplied:NO];
		}
	}
	
	[self setCustomPredicate:[predicateWindowController predicate]];
}

- (IBAction) closePredicateEditor:(id)sender
{
	[NSApp endSheet:[predicateWindowController window]];
	[predicateWindowController close];
}

@end

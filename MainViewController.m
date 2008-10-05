//
//  MainViewController.m
//  Orion
//
//  Created by Michele Longhi on 13/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Quartz/Quartz.h>

#import "MainViewController.h"
#import "SidebarViewController.h"

@implementation MainViewController

@synthesize itemsCount,selectedItemsCount,filterBarVisible;

#pragma mark -
#pragma mark Initializers

- (void) awakeFromNib
{
	// Imposta la sidebar
	
	sidebarController = [[SidebarViewController alloc] initWithNibName:@"SidebarView" bundle:nil];
	
	[sidebarController setRepresentedObject:[self representedObject]];
	[leftView addSubview:[sidebarController view]];
	
	[[sidebarController view] setBoundsOrigin:NSMakePoint(0,0)];
	[[sidebarController view] setFrameSize:[leftView frame].size];
	
	[self setNextResponder:sidebarController];
	
	filterBarVisible = YES;
	[self setFilterBarVisible:YES];
}

- (void) dealloc
{
	[sidebarController release];
	
	[super dealloc];
}

#pragma mark -
#pragma mark Methods

- (void) changedSearchPredicate:(NSPredicate*)predicate
{
}

- (void) refreshCounters
{
	[self willChangeValueForKey:@"selectedItemsCount"];
	[self willChangeValueForKey:@"itemsCount"];
	
	[self didChangeValueForKey:@"selectedItemsCount"];
	[self didChangeValueForKey:@"itemsCount"];
}


#pragma mark -
#pragma mark Accessors

- (NSManagedObjectContext*) managedObjectContext
{
	return [(NSPersistentDocument*)[self representedObject] managedObjectContext];
}

- (void) setFilterBarVisible:(BOOL)visible
{
	// Visualizza o nasconde la filter bar se esistente
	if( filterBar && visible != filterBarVisible )
	{
		[CATransaction begin];
		
		id proxy = [mainView animator];
		if( visible )
		{
			[[filterBar animator] setHidden:NO];
			[proxy setFrameOrigin:NSMakePoint(0,0)];
			[proxy setFrameSize:NSMakeSize([containerView frame].size.width,[containerView frame].size.height-[filterBar frame].size.height)];
		}
		else
		{
			[proxy setFrameOrigin:NSMakePoint(0,0)];
			[proxy setFrameSize:NSMakeSize([containerView frame].size.width,[containerView frame].size.height)];
			[[filterBar animator] setHidden:YES];
		}
		
		[CATransaction commit];
	}
	
	[self willChangeValueForKey:@"filterBarVisible"];
	filterBarVisible = visible;
	[self didChangeValueForKey:@"filterBarVisible"];
}

#pragma mark -
#pragma mark Delegates

#pragma mark SplitView
- (void) splitView:(NSSplitView *)sender resizeSubviewsWithOldSize:(NSSize)oldSize
{
    NSView *left = [[sender subviews] objectAtIndex:0];      // get the two sub views
    NSView *right = [[sender subviews] objectAtIndex:1];
	
    float dividerThickness = [sender dividerThickness];         // and the divider thickness
	
    NSRect newFrame = [sender frame];                           // get the new size of the whole splitView
    NSRect leftFrame = [left frame];                            // current size of the left subview
    NSRect rightFrame = [right frame];                          // ...and the right
    leftFrame.size.height = newFrame.size.height;               // resize the height of the left
    leftFrame.origin = NSMakePoint(0,0);                        // don't think this is needed
	
    rightFrame.size.width = newFrame.size.width - leftFrame.size.width - dividerThickness;
    rightFrame.size.height = newFrame.size.height;              // the whole height
    rightFrame.origin.x = leftFrame.size.width + dividerThickness;  // 
    [left setFrame:leftFrame];
    [right setFrame:rightFrame];
}

@end

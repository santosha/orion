//
//  MyDocument.m
//  Orion
//
//  Created by Michele Longhi on 30/05/08.
//  Copyright __MyCompanyName__ 2008 . All rights reserved.
//

#import "ProjectDocument.h"
#import "PricesViewController.h"
#import "ComputoViewController.h"
#import "ProjectWindowController.h"

@implementation ProjectDocument

- (id)init 
{
    self = [super init];
    if (self != nil) 
	{
        currentSection = -1;
    }
    return self;
}

- (void)makeWindowControllers
{
	ProjectWindowController* wc = [[ProjectWindowController alloc] initWithWindowNibName:@"ProjectDocument" owner:self];
	
	[self addWindowController:wc];
}

- (void)windowControllerDidLoadNib:(NSWindowController *)windowController 
{
    [super windowControllerDidLoadNib:windowController];
	
	pricesViewController = nil;
	computoViewController = nil;
	contabViewController = nil;
	
    
	[self changeSection:self];
}

#pragma mark -
#pragma mark Delegates

static NSMutableArray* itemsArray = nil;

- (NSArray *)toolbarSelectableItemIdentifiers:(NSToolbar *)tb 
{
	if( !itemsArray )
	{
		itemsArray = [NSMutableArray new];
		
		for (NSToolbarItem* item in [tb items]) 
		{
			if( [item tag] >= 0 && [item tag] <=9 )
				[itemsArray addObject:[item itemIdentifier]];
		}
	}
	
	return itemsArray;
}

#pragma mark -
#pragma mark Actions

- (IBAction) changeSection:(id)sender
{
	int oldsection = currentSection;
	
	if( sender == self )
		currentSection = 0;
	else
		currentSection = [sender tag];
	
	if( oldsection != currentSection )
	{
		for( NSToolbarItem* item in [toolbar items] )
		{
			if( [item tag] == currentSection )
			{
				[toolbar setSelectedItemIdentifier:[item itemIdentifier]];
				break;
			}
		}
		
		// Imposta la vista attuale
		viewController = nil;
		switch (currentSection) 
		{
			case 0:
				if( pricesViewController )
					viewController = (PricesViewController*)pricesViewController;
				else
					viewController = pricesViewController = [[PricesViewController alloc] initWithNibName:@"PricesView" bundle:nil];
				break;
				
			case 1:
				if( computoViewController )
					viewController = (ComputoViewController*)computoViewController;
				else
					viewController = computoViewController = [[ComputoViewController alloc] initWithNibName:@"ComputoView" bundle:nil];
				break;
		}
		
		if( viewController )
		{
			[viewController setRepresentedObject:self];
			
			if( [[mainView subviews] count] > 0 )
				[mainView replaceSubview:[[mainView subviews] objectAtIndex:0] with:[viewController view]];
			else
				[mainView addSubview:[viewController view]];
			
			[[viewController view] setBoundsOrigin:NSMakePoint(0, 0)];
			[[viewController view] setFrameSize:[mainView frame].size];
			
			[[mainView window] setNextResponder:viewController];
		}
		
		[viewController refreshCounters];
		
		[self setFilterBarVisible:[viewController filterBarVisible]];
	}
}

@end

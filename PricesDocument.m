//
//  PricesDocument.m
//  Orion
//
//  Created by Michele Longhi on 31/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "PricesDocument.h"
#import "PricesViewController.h"
#import "MOPrices.h"
#import "MOAnalisys.h"
#import "PricesWindowController.h"

@implementation PricesDocument

- (id)init 
{
    self = [super init];
    if (self != nil) 
	{
        // initialization code
    }
    return self;
}

- (void)makeWindowControllers
{
	PricesWindowController* wc = [[PricesWindowController alloc] initWithWindowNibName:@"PricesDocument" owner:self];
	
	[self addWindowController:wc];
}

- (void)windowControllerDidLoadNib:(NSWindowController *)windowController 
{
    [super windowControllerDidLoadNib:windowController];

	viewController = [[PricesViewController alloc] initWithNibName:@"PricesView" bundle:nil];

	[viewController setRepresentedObject:self];
	[mainView addSubview:[viewController view]];
	[[viewController view] setBoundsOrigin:NSMakePoint(0, 0)];
	[[viewController view] setFrameSize:[mainView frame].size];
	
	[[mainView window] setNextResponder:viewController];	
	
	[viewController refreshCounters];
}

	 
@end

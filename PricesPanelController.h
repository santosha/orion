//
//  PricesPanelController.h
//  Orion
//
//  Created by Michele Longhi on 16/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PricesPanelController : NSWindowController 
{
	NSManagedObjectContext* managedObjectContext;
	NSManagedObjectContext* originalContext;
	
	IBOutlet NSArrayController* arrayController;
	IBOutlet NSTableView* tableView;
}

@property (assign,readwrite) NSManagedObjectContext* managedObjectContext;

#pragma mark Accessors

- (NSString*) categoryPath;
- (NSString*) storeName;

#pragma mark Actions

- (IBAction) changeStore:(id)sender;
- (IBAction) resetStore:(id)sender;


@end

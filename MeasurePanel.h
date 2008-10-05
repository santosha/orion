//
//  MeasurePanel.h
//  Orion
//
//  Created by Michele Longhi on 21/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MeasurePanel : NSWindowController 
{
	IBOutlet NSArrayController* umArrayController;
	IBOutlet NSTableView* umTableView;
	
	NSManagedObject* managedObject;
	
	NSDictionary* um;
}

@property (assign,readwrite) NSManagedObject* managedObject;

- (IBAction) closeMeasureEditor:(id)sender;

- (NSString*) umName;
- (NSString*) umDescription;

@end

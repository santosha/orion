//
//  PreferencesWindowController.h
//  Lyra
//
//  Created by Michele Longhi on 22/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PreferencesView.h"
#import "DropBox.h"

@interface PreferencesWindowController : NSWindowController 
{
	IBOutlet NSUserDefaultsController* udController;
	IBOutlet PreferencesView* generaliView;
	IBOutlet PreferencesView* userView;
	IBOutlet PreferencesView* umView;
	IBOutlet PreferencesView* licenseView;
	IBOutlet NSArrayController* umController;
	
	// Licenza
	IBOutlet DropBox* licenseDropBox;
	IBOutlet NSTextField* licenseName;
	IBOutlet NSTextField* licenseEmail;
	
	int selectedPane;
}

#pragma mark Properties

#pragma mark Actions

- (IBAction) changePreferencePane:(id)sender;
- (IBAction) addUM:(id)sender;

#pragma mark Generic Methods

- (void) setPreferenceToIndex:(int)index;
- (void) setupLicense;

#pragma mark Accessors


@end

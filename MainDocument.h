//
//  PricesDocument.h
//  Orion
//
//  Created by Michele Longhi on 31/05/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

//
//	Classe parent di gestione dei documenti dell'applicazione
//

#import <Cocoa/Cocoa.h>
#import "PricesViewController.h"
#import "PricesPanelController.h"
#import "MainViewController.h"

@interface MainDocument : NSPersistentDocument 
{
	IBOutlet NSView* mainView;
	IBOutlet NSSearchField* searchField;
	IBOutlet NSPanel* importPanel;
	IBOutlet NSProgressIndicator* progressIndicator;
	IBOutlet NSTextField* smallStatusMessage;
	IBOutlet NSTextField* statusMessage;
	
	IBOutlet MainViewController* viewController;
	
	NSPredicate* searchPredicate;
	
	PricesPanelController* pricesPanelController;
	
	int itemsCount;
	int selectedItemsCount;
}

@property (assign,readwrite) NSPredicate* searchPredicate;
@property int itemsCount;
@property int selectedItemsCount;
@property BOOL filterBarVisible;

#pragma mark Accessors


#pragma mark Methods
- (void) changeCounters:(NSNotification*)notification;
- (void) composeStatusMessage;
- (void) importXPWEForFilename:(NSString*)filename;
- (void) importCSVSForFilename:(NSString*)filename;

#pragma mark Delegates
- (void)openPanelDidEnd:(NSOpenPanel *)panel returnCode:(int)returnCode  contextInfo:(void  *)contextInfo;
- (void)windowControllerDidLoadNib:(NSWindowController *)windowController;

#pragma mark Actions

- (IBAction) importXPWE:(id)sender;
- (IBAction) importCSVS:(id)sender;
- (IBAction) fastSearch:(id)sender;
- (IBAction) showPricesPanel:(id)sender;

@end

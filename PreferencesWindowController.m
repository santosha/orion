//
//  PreferencesWindowController.m
//  Lyra
//
//  Created by Michele Longhi on 22/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "PreferencesWindowController.h"
#import "AppController.h"

@implementation PreferencesWindowController

#pragma mark Initialization

- (void) awakeFromNib
{
	[self setPreferenceToIndex:selectedPane = 0];
	
	// Gestione licenza
	[licenseDropBox setDelegate:self];
	[licenseDropBox registerForDraggedTypes:[NSArray arrayWithObject:NSURLPboardType]];
	
	[self setupLicense];
}

#pragma mark Actions

// Seleziona il pannello
- (IBAction) changePreferencePane:(id)sender
{
	if( [sender tag] != selectedPane )
	{
		selectedPane = [sender tag];
		
		[self setPreferenceToIndex:selectedPane];
	}
}

- (IBAction) addUM:(id)sender
{
	NSMutableDictionary* um = [NSMutableDictionary dictionary];
	
	[um setObject:@"nuova" forKey:@"name"];
	[um setObject:@"" forKey:@"key"];
	[um setObject:@"" forKey:@"comment"];
	
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	
	NSMutableArray* ums = [ud valueForKey:@"um"];
	[ums addObject:um];
	
	
}

#pragma mark Generic Methods

- (void) setPreferenceToIndex:(int)index
{
	PreferencesView* currView = nil;
	
	NSArray* items = [[[self window] toolbar] items];
	NSSize newSize;
	
	[[[self window] toolbar] setSelectedItemIdentifier:[[items objectAtIndex:index] itemIdentifier]];
	
	switch (index) 
	{
		case 0: // Generali
			currView = generaliView;
			newSize = NSMakeSize(550,400);
			[[self window] setTitle:NSLocalizedString(@"GeneralPreferences",nil)];
			break;
		case 1: // Categorie
			currView = userView;
			newSize = NSMakeSize(550, 400);
			[[self window] setTitle:NSLocalizedString(@"UserPreferences",nil)];
			break;
		case 2: // Unità di misura
			currView = umView;
			newSize = NSMakeSize(550,510);
			[[self window] setTitle:NSLocalizedString(@"UMPreferences",nil)];
			break;
		case 3: // Licenza
			currView = licenseView;
			newSize = NSMakeSize(550,275);
			[[self window] setTitle:NSLocalizedString(@"LicensePreferences",nil)];
			break;
	}
	
	if( currView )
	{
		// Ridimensiona la finestra delle preferenze
		
		NSView* blankView = [[NSView alloc] init];
		
		[[self window] setContentView:blankView];
		
		NSRect wFrame = [NSWindow contentRectForFrameRect:[[self window] frame] styleMask:[[self window] styleMask]];

		wFrame.origin.y += (wFrame.size.height - newSize.height);
		wFrame.size.height = newSize.height;
		wFrame.size.width = newSize.width;
		
		wFrame = [NSWindow frameRectForContentRect:wFrame styleMask:[[self window] styleMask]];
		
		[[self window] setFrame:wFrame display:YES animate:YES];

		[[self window] setContentView:currView];
		[currView setBoundsOrigin:NSMakePoint(0, 0)];
		
		[[self window] makeFirstResponder:currView];
		
		[blankView release];
	}
}

- (void) setupLicense
{
	NSDictionary* licenseDictionary = [AppController licenseDictionary];
	
	if( licenseDictionary ) // Licenza corretta
	{
		[licenseName setStringValue:[licenseDictionary valueForKey:@"Name"]];
		[licenseEmail setStringValue:[licenseDictionary valueForKey:@"Email"]];
	}
	else // Senza licenza
	{
		[licenseName setStringValue:@"nessuna licenza"];
		[licenseEmail setStringValue:@"nessuna licenza"];
	}
}

#pragma mark Accessors

#pragma mark Delegates

static NSMutableArray* itemsArray = nil;

- (NSArray *)toolbarSelectableItemIdentifiers:(NSToolbar *)toolbar 
{
	if( !itemsArray )
	{
		itemsArray = [NSMutableArray new];
		
		for (NSToolbarItem* item in [toolbar items]) 
			[itemsArray addObject:[item itemIdentifier]];
	}
	
	return itemsArray;
}

#pragma mark License DropBox

- (BOOL)prepareForDragOperation:(id < NSDraggingInfo >)sender
{
	NSPasteboard* pboard = [sender draggingPasteboard];
	
	if ( [[pboard types] containsObject:NSURLPboardType] ) 
		return YES;

	return NO; 
}

- (NSDragOperation)draggingEntered:(id <NSDraggingInfo>)sender
{
	NSPasteboard* pboard = [sender draggingPasteboard];
	
	if ( [[pboard types] containsObject:NSURLPboardType] ) 
		return NSDragOperationCopy;
	
	return NSDragOperationNone;
}

- (BOOL)performDragOperation:(id < NSDraggingInfo >)sender
{
	NSPasteboard* pboard = [sender draggingPasteboard];
	
	if ( [[pboard types] containsObject:NSURLPboardType] ) 
	{
		NSURL *fileURL = [NSURL URLFromPasteboard:pboard]; 

		NSData* data = [NSData dataWithContentsOfURL:fileURL];
		
		NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
		
		[ud setObject:data forKey:@"license"];
		
		[self setupLicense];
		
		return YES;
	}
	
	return NO; 
	
}


@end

//
//  AppController.m
//  Orion
//
//  Created by Michele Longhi on 31/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"
#import "AquaticPrime.h"

@implementation AppController

#pragma mark -
#pragma mark Initializers
	
#pragma mark -
#pragma mark Actions

- (IBAction) newProjectDocument:(id)sender
{
	NSError* error;
	
	NSDocumentController* docc = [NSDocumentController sharedDocumentController];
	
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	
	int i = [ud integerForKey:@"defaultDataFormat"];
	NSString* type = @"OrionProject";
	if( i == 1 )
		type = @"OrionProjectXML";
	
	NSDocument* doc = [docc makeUntitledDocumentOfType:type error:&error];
	
	if( doc )
	{
		[docc addDocument:doc];
		[doc makeWindowControllers];	
		[doc showWindows];	
	}
	else
	{
		[NSApp presentError:error];
	}
}

- (IBAction) newPricesDocument:(id)sender
{
	NSError* error;
	
	NSDocumentController* docc = [NSDocumentController sharedDocumentController];
	
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	
	int i = [ud integerForKey:@"defaultDataFormat"];
	NSString* type = @"OrionPrices";
	if( i == 1 )
		type = @"OrionPricesXML";
	
	NSDocument* doc = [docc makeUntitledDocumentOfType:type error:&error];
	
	if( doc )
	{
		[docc addDocument:doc];
		[doc makeWindowControllers];	
		[doc showWindows];	
	}
	else
	{
		[NSApp presentError:error];
	}
}

- (IBAction) showPreferences:(id)sender
{
	if( !preferencesWindow )
		preferencesWindow = [[PreferencesWindowController alloc] initWithWindowNibName:@"Preferences"];
	
	[preferencesWindow showWindow:self];
}

+ (NSURL*) storeURLFromManagedObjectContext:(NSManagedObjectContext*)context
{
	if( [[[context persistentStoreCoordinator] persistentStores] count] > 0 )
	{
		NSPersistentStore* store = [[[context persistentStoreCoordinator] persistentStores] objectAtIndex:0];
		
		return [store URL];
	}
	
	return nil;
}

static NSURL* lastURL = nil;
static NSPersistentStoreCoordinator* lastStoreCoordinator = nil;

+ (NSPersistentStoreCoordinator*) storeCoordinatorForURL:(NSURL*)url
{
	if( url != lastURL )
	{
		NSError *error;
		
		NSManagedObjectModel* managedObjectModel = [[NSManagedObjectModel mergedModelFromBundles:nil] retain];  
		
		NSPersistentStoreCoordinator* persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:managedObjectModel];
		
		if (![persistentStoreCoordinator addPersistentStoreWithType:[AppController storeTypeFromFilename:[url absoluteString]]
													  configuration:nil 
																URL:url 
															options:nil
															  error:&error])
		{
			[[NSApplication sharedApplication] presentError:error];
			return nil;
		}
		
		lastURL = url;
		lastStoreCoordinator = persistentStoreCoordinator;
		
		return [persistentStoreCoordinator autorelease];
	}
	else
	{
		return lastStoreCoordinator;
	}
}

+ (NSString*) storeTypeFromFilename:(NSString*)filename
{
	NSString* ext = [filename pathExtension];
	
	NSString* storeType = NSSQLiteStoreType;
	
	if( [ext isEqualToString:@"OrionProjectXML"] || [ext isEqualToString:@"OrionPricesXML"] )
		storeType = NSXMLStoreType;
	
	return storeType;
}

- (void) licenseDidEnd: (NSWindow *)sheet returnCode: (int)returnCode contextInfo: (void *)contextInfo
{
    if (returnCode == NSAlertDefaultReturn)
	{	
		NSURL *url = [NSURL URLWithString:@"http://www.michelelonghi.com"];
		[[NSWorkspace sharedWorkspace] openURL:url];
	}
}

#pragma mark -
#pragma mark Delegates

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Imposta i valori predefiniti dell'applicazione
	[AppController udSetDefaults];
	
	// Verifica la licenza e visualizza il messaggio
	if( ![AppController isLicensed] )
	{
		NSBeginAlertSheet(@"L'applicazione non dipone di una licenza d'uso", 
						  @"Acquista una licenza...", 
						  @"Continua senza licenza", 
						  nil, 
						  nil, 
						  self, 
						  @selector(licenseDidEnd:returnCode:contextInfo:), 
						  nil,
						  nil, 
						  @"Puoi continuare ad utilizzare l'applicazione senza licenza. In questo caso le stampe saranno marchiate come DEMO e gli archivi presenteranno delle limitazioni");
	}
}

#pragma mark -
#pragma mark UserDefaults

+ (void) udSetDefaults
{
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableDictionary *appDefaults = [NSMutableDictionary dictionary];
	
	[appDefaults setObject:@"NO" forKey:@"CreateOriginalCategoryWhenDraggingFromExternalContext"];
	[appDefaults setObject:@"YES" forKey:@"CreateOriginalCategoryWhenDraggingFromExternalContextWithNoCategories"];
	[appDefaults setObject:@"YES" forKey:@"CreateOriginalCategoryWhenDraggingIntoEmptyArea"];
	[appDefaults setObject:@"YES" forKey:@"CreateNewCategoryWhenDraggingIntoEmptyArea"];
	
    [defaults registerDefaults:appDefaults];
}

+ (NSDictionary*) licenseDictionary
{	
	// This string is specially constructed to prevent key replacement 	// *** Begin Public Key ***
	NSMutableString *key = [NSMutableString string];
	[key appendString:@"0xC79608"];
	[key appendString:@"D"];
	[key appendString:@"D"];
	[key appendString:@"06D6B07497F131FE53CC"];
	[key appendString:@"B7F05165C1521DF04"];
	[key appendString:@"5"];
	[key appendString:@"5"];
	[key appendString:@"72DABEC73C6"];
	[key appendString:@"06DFC1D1F932DFCF"];
	[key appendString:@"6"];
	[key appendString:@"6"];
	[key appendString:@"4DEADF193209"];
	[key appendString:@"175F94EBE3864"];
	[key appendString:@"F"];
	[key appendString:@"F"];
	[key appendString:@"3D19E7F9F2944F8"];
	[key appendString:@"34E9"];
	[key appendString:@"E"];
	[key appendString:@"E"];
	[key appendString:@"D8CFCE797CC9C74C247037A7"];
	[key appendString:@"391FD74AE96F981"];
	[key appendString:@"B"];
	[key appendString:@"B"];
	[key appendString:@"8B2ED992280FE"];
	[key appendString:@"120A757DBA28EFECB2548FB260A3F1"];
	[key appendString:@"7BD560B0F35DB1838462CD1C2E3709"];
	[key appendString:@"D8675125E3CDD2693D"];
	// *** End Public Key *** 
	
	AquaticPrime *licenseValidator = [AquaticPrime aquaticPrimeWithKey:key];

	// Legge la licenza dai defaults
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	
	NSData* licData = [ud dataForKey:@"license"];
	
	if( !licData )
		return nil;
	
    NSDictionary *licenseDictionary = [licenseValidator dictionaryForLicenseData:licData];
	
	return licenseDictionary;
}

+ (BOOL) isLicensed
{
	NSDictionary* licenseDictionary = [AppController licenseDictionary];
	
	return (licenseDictionary != nil);
}

@end

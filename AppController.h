//
//  AppController.h
//  Orion
//
//  Created by Michele Longhi on 31/05/08.
//  Copyright 2008 Santosha Multimedia. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PreferencesWindowController.h"

@interface AppController : NSObject 
{
	PreferencesWindowController* preferencesWindow;
}

- (IBAction) newPricesDocument:(id)sender;
- (IBAction) newProjectDocument:(id)sender;
- (IBAction) showPreferences:(id)sender;

- (void) licenseDidEnd: (NSWindow *)sheet returnCode: (int)returnCode contextInfo: (void *)contextInfo;

+ (NSURL*) storeURLFromManagedObjectContext:(NSManagedObjectContext*)context;
+ (NSPersistentStoreCoordinator*) storeCoordinatorForURL:(NSURL*)url;
+ (NSString*) storeTypeFromFilename:(NSString*)filename;

#pragma mark userDefaults

+ (void) udSetDefaults;
+ (BOOL) isLicensed;
+ (NSDictionary*) licenseDictionary;


@end

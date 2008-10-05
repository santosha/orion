//
//  PreferenceView.h
//  Lyra
//
//  Created by Michele Longhi on 22/05/08.
//  Copyright 2008 Santosha Multimedia. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PreferencesView : NSView 
{
	NSManagedObjectContext* managedObjectContext;
}

#pragma mark Accessors

- (void) setManagedObjectContext:(NSManagedObjectContext*)context;
- (NSManagedObjectContext*) managedObjectContext;

@end

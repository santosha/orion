//
//  PreferenceView.m
//  Lyra
//
//  Created by Michele Longhi on 22/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "PreferencesView.h"

@implementation PreferencesView


- (id)initWithFrame:(NSRect)frame 
{
    self = [super initWithFrame:frame];
    if (self) 
	{
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)rect 
{
    // Drawing code here.
}

#pragma mark Accessors

#pragma mark Accessors

- (void) setManagedObjectContext:(NSManagedObjectContext*)context
{
	managedObjectContext = context;
}

- (NSManagedObjectContext*) managedObjectContext
{
	return managedObjectContext;
}


@end

//
//  ProjectDetailsWindowController.m
//  Orion
//
//  Created by Michele Longhi on 24/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "ProjectDetailsWindowController.h"


@implementation ProjectDetailsWindowController

@synthesize project;

- (IBAction) endPanel:(id)sender
{
	[NSApp endSheet:[self window]];
}

@end

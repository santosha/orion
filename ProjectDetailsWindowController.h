//
//  ProjectDetailsWindowController.h
//  Orion
//
//  Created by Michele Longhi on 24/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MOProjects.h"

@interface ProjectDetailsWindowController : NSWindowController 
{
	MOProjects* project;
}

@property (assign,readwrite) MOProjects* project;

- (IBAction) endPanel:(id)sender;

@end

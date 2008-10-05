//
//  ComputoFilterBarController.h
//  Orion
//
//  Created by Michele Longhi on 25/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FilterBarController.h"

@interface ComputoFilterBarController : FilterBarController
{
	int viewMode;
}

@property int viewMode;

@end
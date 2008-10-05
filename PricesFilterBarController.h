//
//  PricesFilterBarController.h
//  Orion
//
//  Created by Michele Longhi on 21/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FilterBarController.h"

@interface PricesFilterBarController : FilterBarController
{
	BOOL showAnalisys;
	BOOL showWarnings;
	BOOL showElements;
}

@property BOOL showAnalisys;
@property BOOL showWarnings;
@property BOOL showElements;

@end

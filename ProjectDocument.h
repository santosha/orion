//
//  MyDocument.h
//  Orion
//
//  Created by Michele Longhi on 30/05/08.
//  Copyright __MyCompanyName__ 2008 . All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MainDocument.h"

@interface ProjectDocument : MainDocument 
{
	IBOutlet NSToolbar* toolbar;

	int currentSection;
	
	NSViewController* pricesViewController;
	NSViewController* computoViewController;
	NSViewController* contabViewController;
}

- (IBAction) changeSection:(id)sender;

@end

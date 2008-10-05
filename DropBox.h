//
//  DropBox.h
//  Lyra
//
//  Created by Michele Longhi on 02/06/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface DropBox : NSBox
{
	id _delegate;
}

- (void) setDelegate:(id)delegate;
- (id) delegate;

@end

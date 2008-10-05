//
//  NSMeasureFieldCell.h
//  Orion
//
//  Created by Michele Longhi on 23/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface NSMeasureFieldCell : NSTextFieldCell
{

}

- (IBAction) doAction:(id)sender;
- (void) setupCell:(NSManagedObject*)object;

@end

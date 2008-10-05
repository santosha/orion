//
//  NSTokenAttachment.h
//  Orion
//
//  Created by Michele Longhi on 23/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSTokenAttachment : NSTextAttachment
{
    id _delegate;
}
	
- (id)initWithDelegate:(id)fp8;
- (void)encodeWithCoder:(id)fp8;
- (id)initWithCoder:(id)fp8;
- (id)attachmentCell;
- (id)delegate;
- (void)setDelegate:(id)fp8;

@end

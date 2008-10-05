//
//  CategoryHeaderView.h
//  Orion
//
//  Created by Michele Longhi on 18/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface CategoryHeaderView : NSView 
{
	int mode;
	
	NSGradient* gradient;
	NSFont* f;
	NSMutableParagraphStyle* p;
	NSMutableDictionary* dic;
	NSShadow* shadow;
}

@property int mode;

@end

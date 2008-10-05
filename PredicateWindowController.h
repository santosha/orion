//
//  PredicateViewController.h
//  Orion
//
//  Created by Michele Longhi on 25/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PredicateWindowController : NSWindowController
{
	IBOutlet NSView* pricePredicate;
	IBOutlet NSView* computoPricePredicate;
	IBOutlet NSView* computoPartPredicate;
	IBOutlet NSView* mainView;
	IBOutlet NSTextField* collectionName;
	
	IBOutlet NSPredicateEditor* pricePredicateEditor;
	IBOutlet NSPredicateEditor* computoPricePredicateEditor;
	IBOutlet NSPredicateEditor* computoPartPredicateEditor;
	
	NSPredicateEditor* predicateEditor;
	
	NSPredicate* predicate;
	
	NSString* newCollectionName;
}

@property (assign,readwrite) NSPredicate* predicate;
@property (assign,readwrite) NSString* newCollectionName;

- (void) setupView:(NSView*)v forType:(int)type;
- (IBAction) closePredicateEditor:(id)sender;
- (NSArray*) predicateEditorTemplates;

@end

//
//  PredicateViewController.m
//  Orion
//
//  Created by Michele Longhi on 25/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "PredicateWindowController.h"

@implementation PredicateWindowController

@synthesize predicate,newCollectionName;

#pragma mark -
#pragma mark Initializers

- (void) awakeFromNib
{
	NSLog(@"Awake");
}

#pragma mark -
#pragma mark Methods

- (void) setupView:(NSView*)v forType:(int)type;
{
	if( !v )
		v = mainView;
		
	NSView* view;
	switch (type) 
	{
		case 10: // Elenco prezzi
			view = pricePredicate;
			predicateEditor = pricePredicateEditor;
			break;
		
		case 20: // Computo - articoli 
			view = computoPricePredicate;
			predicateEditor = computoPricePredicateEditor;
			break;
			
		case 21: // Computo - parti
			view = computoPartPredicate;
			predicateEditor = computoPartPredicateEditor;
			break;
	}
	
	if( view )
	{
		[v addSubview:view];
		
		[view setBoundsOrigin:NSMakePoint(0, 0)];
		[view setFrameSize:[v frame].size];
		
		[self setPredicate:[predicateEditor predicate]];
		if( ![self predicate] )
		{
			[predicateEditor addRow:self];
		}
		
		[[view window] makeFirstResponder:predicateEditor];
		[collectionName setStringValue:@""];
	}

}

- (IBAction) closePredicateEditor:(id)sender
{
	if( ![[collectionName stringValue] isEqualToString:@""] )
	{
		[self setNewCollectionName:[collectionName stringValue]];
	}
	else 
	{
		[self setNewCollectionName:nil];
	}

	
	[NSApp endSheet:[self window]];
	[self close];
}

- (NSArray*) predicateEditorTemplates
{
	NSMutableArray* array = [NSMutableArray array];
	
	// Usa i compound esistenti
	for( NSPredicateEditorRowTemplate* temp in [predicateEditor rowTemplates] )
	{
		[array addObject:temp];
	}
	
	// TODO: Adatta le unità di misura
	
	
	// TODO: Rimuove le voci non necessarie in questo contesto
	
	return array;
}



@end

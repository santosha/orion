//
//  PriceViewController.m
//  Orion
//
//  Created by Michele Longhi on 16/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "PriceViewController.h"
#import "MeasureCell2.h"
#import "NSMeasureFieldCell.h"


@implementation PriceViewController

#pragma mark -
#pragma mark Initializers

- (void) awakeFromNib
{
	NSMutableArray* sortDescriptors = [NSMutableArray array];
	[sortDescriptors addObject:[[NSSortDescriptor alloc] initWithKey:@"orderNumber" ascending:YES]];
	[sortDescriptors addObject:[[NSSortDescriptor alloc] initWithKey:@"code" ascending:YES]];
	[analisiTableView setSortDescriptors:sortDescriptors];

	// inizializza il controller delle misure
	
	[analisiTableView setDoubleAction:@selector(showMeasureEditor:)];
	
	measurePanel = [[MeasurePanel alloc] initWithWindowNibName:@"MeasurePanel"];
	
	[analisiController addObserver:self forKeyPath:@"selection" options:NSKeyValueObservingOptionNew context:analisiController];
}

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == analisiController) 
	{
		if( [keyPath isEqualToString:@"selection"] )
		{
			// [measureCell setupCell:[[analisiController selectedObjects] objectAtIndex:0]];
		}
	}
	else 
	{
		[super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
	}
}


#pragma mark - 
#pragma mark Accessors

- (NSManagedObjectContext*) managedObjectContext
{
	return [[self representedObject] managedObjectContext];
}

#pragma mark -
#pragma mark Methods

- (void) addToView:(NSView*)view
{
	[view addSubview:[self view]];
	[[self view] setBoundsOrigin:NSMakePoint(0, 0)];
	[[self view] setFrameSize:[view frame].size];
}

- (IBAction) closeMeasureEditor:(id)sender
{
	[NSApp endSheet:[measurePanel window]];
	[[measurePanel window] close];
}

- (IBAction) showMeasureEditor:(id)sender
{
	[measurePanel setManagedObject:[[analisiController selectedObjects] objectAtIndex:0]];
	
	[NSApp beginSheet:[measurePanel window]
	   modalForWindow:[[self view] window]
		modalDelegate:self 
	   didEndSelector:nil
		  contextInfo:nil];
}

#pragma mark -
#pragma mark Delegates

#pragma mark TableView (analisi)

- (NSCell *)tableView:(NSTableView *)tableView dataCellForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
	if( !tableColumn )
	{
		if( row < [[analisiController arrangedObjects] count] )
		{
			MOAnalisys* an = [[analisiController arrangedObjects] objectAtIndex:row];
			
			if( ![an code] )
			{
				NSTextFieldCell* cell = [[[NSTextFieldCell alloc] init] autorelease];
				[cell setFont:[NSFont boldSystemFontOfSize:12]];
				[cell setEditable:YES];
				[cell setTextColor:[NSColor blackColor]];
				return cell;
			}
		}
	}
	
	return nil;
}

- (void) tableView:(NSTableView *) tableView willDisplayCell:(id) cell forTableColumn:(NSTableColumn *) tableColumn row:(int) row
{
	if( !tableColumn )
	{
		if( row < [[analisiController arrangedObjects] count] )
		{
			MOAnalisys* an = [[analisiController arrangedObjects] objectAtIndex:row];
			[cell setStringValue:[an description]];
		}
	}
}	

- (BOOL)tableView:(NSTableView *)tableView isGroupRow:(NSInteger)row
{
	if( [analisiController selection] )
	{
		if( row < [[analisiController arrangedObjects] count] )
		{
			MOAnalisys* an = [[analisiController arrangedObjects] objectAtIndex:row];
			
			if( ![an code] )
			{
				return YES;
			}
		}
	}
	
	return NO;
}

- (BOOL) keyPressed:(NSNumber*)keyCode
{
	if( [keyCode intValue] == 36 ) // Invio
	{
		[self showMeasureEditor:self];
		return YES;
	}
	
	return NO;
}

- (BOOL) mouseDownClickCount:(NSNumber*)clickCount
{
	if( [clickCount intValue] == 2 ) // Invio
	{
		[self showMeasureEditor:self];
		return YES;
	}
	
	return NO;
}

#pragma mark -
#pragma mark Actions

@end

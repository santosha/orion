//
//  PricesViewController.m
//  Orion
//
//  Created by Michele Longhi on 12/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "PricesViewController.h"
#import "SidebarViewController.h"
#import "AppController.h"
#import "PricesFilterBarController.h"

#import "MOPrices.h"
#import "MOCategories.h"

@implementation PricesViewController

@synthesize sortDescriptors;

#pragma mark -
#pragma mark Initializers

- (void) awakeFromNib
{
	[super awakeFromNib];
	
	// Inizializzazioni
	searchPredicate = nil;
	
	// Registra l'ordinamento
	sortDescriptors = [NSArray arrayWithObject:[[[NSSortDescriptor alloc] initWithKey:@"code" ascending:YES] autorelease]];
	[tableView setSortDescriptors:sortDescriptors];
	[analisiArrayController setSortDescriptors:[NSArray arrayWithObject:[[[NSSortDescriptor alloc] initWithKey:@"code" ascending:YES] autorelease]]];
	
	// Registra i drag
	[tableView registerForDraggedTypes:[NSArray arrayWithObjects:@"OrionPrices",nil] ]; 
	
	// Impostazione della tebella
	NSImage *headerImage = [NSImage imageNamed:@"analisi-marker.png"];
	NSTextAttachment *ta = [[NSTextAttachment alloc] init];
	[(NSCell *)[ta attachmentCell] setImage: headerImage];
	[(NSCell *)[ta attachmentCell] setAlignment:NSCenterTextAlignment];
	[(NSCell *)[ta attachmentCell] setBaseWritingDirection:NSWritingDirectionRightToLeft];
	NSMutableParagraphStyle* p = [[NSMutableParagraphStyle alloc] init];
	[p setAlignment:NSCenterTextAlignment];
	NSAttributedString *headerAS = [NSAttributedString attributedStringWithAttachment:ta];
	
	[[[tableView tableColumnWithIdentifier:@"analisi-marker"] headerCell] setAttributedStringValue: headerAS];
	
	headerImage = [NSImage imageNamed:@"warning-marker.png"];
	ta = [[NSTextAttachment alloc] init];
	[(NSCell *)[ta attachmentCell] setImage: headerImage];
	[(NSCell *)[ta attachmentCell] setAlignment:NSCenterTextAlignment];
	[(NSCell *)[ta attachmentCell] setBaseWritingDirection:NSWritingDirectionRightToLeft];
	headerAS = [NSAttributedString attributedStringWithAttachment:ta];
	[[[tableView tableColumnWithIdentifier:@"warning-marker"] headerCell] setAttributedStringValue: headerAS];
	
	
	// View dei prezzi
	priceViewController = [[PriceViewController alloc] initWithNibName:@"PriceView" bundle:nil];
	[priceViewController addToView:priceView];
	
	
	// Filtro
	filterBarController = [[PricesFilterBarController alloc] initWithNibName:@"PricesFilterBar" bundle:nil];
	[filterBarController setRepresentedObject:[self representedObject]];
	[filterBarController setSidebarViewController:sidebarController];
	[filterBar addSubview:[filterBarController view]];
	[[filterBarController view] setBoundsOrigin:NSMakePoint(0, 0)];
	[[filterBarController view] setFrameSize:[filterBar frame].size];
	
	// Altre impostazioni
	[textView setRulerVisible:YES];
	
	// Osservatori
	[arrayController addObserver:self forKeyPath:@"selection" options:NSKeyValueObservingOptionNew context:arrayController];
	[arrayController addObserver:self forKeyPath:@"arrangedObjects" options:NSKeyValueObservingOptionNew context:arrayController];
	[sidebarController addObserver:self forKeyPath:@"selectedCategory" options:NSKeyValueObservingOptionNew context:sidebarController];
	[sidebarController addObserver:self forKeyPath:@"selectedPlaylist" options:NSKeyValueObservingOptionNew context:sidebarController];
	
	[filterBarController addObserver:self forKeyPath:@"showAllCategories" options:NSKeyValueObservingOptionNew context:filterBarController];
	[filterBarController addObserver:self forKeyPath:@"showElements" options:NSKeyValueObservingOptionNew context:filterBarController];
	[filterBarController addObserver:self forKeyPath:@"showAnalisys" options:NSKeyValueObservingOptionNew context:filterBarController];
	[filterBarController addObserver:self forKeyPath:@"showWarnings" options:NSKeyValueObservingOptionNew context:filterBarController];
	[filterBarController addObserver:self forKeyPath:@"customPredicate" options:NSKeyValueObservingOptionNew context:filterBarController];
	
	[sidebarController setMode:0];
	
	
}

#pragma mark -
#pragma mark Methods

- (void) changedSearchPredicate:(NSPredicate*)predicate
{
	searchPredicate = [predicate retain];
	
	[self requery];
}

- (void) addChildrenSubpredicatesOfCategory:(MOCategories*)cat toArray:(NSMutableArray*)array
{
	[array addObject:[NSPredicate predicateWithFormat:@"category=%@",cat]];
	
	for( MOCategories* c in [cat children] )
	{
		[self addChildrenSubpredicatesOfCategory:c toArray:array];
	}
}

- (void) requery
{
	[NSThread detachNewThreadSelector:@selector(requeryThread) toTarget:self withObject:nil];
}

- (void) requeryThread
{
	// Proviamo ad impostare un predicato per la selezione della categoria
	
	NSAutoreleasePool* ap = [[NSAutoreleasePool alloc] init];
	
	NSPredicate* predicate;
	
	NSPredicate* categoryPredicate = nil;
	NSPredicate* smartPlaylistPredicate = nil;
	
	if(  ([sidebarController selectionMode] == 0 && [sidebarController selectedCategory] != nil) ) // Categorie
	{
		if( [[[sidebarController selectedCategory] children] count] == 0 || ![filterBarController showAllCategories] ) // Nessuna sottocategoria
		{
			categoryPredicate = [NSPredicate predicateWithFormat:@" category = %@", [sidebarController selectedCategory]];
		}
		else // Parent: crea un predicato per ogni categoria figlio
		{
			NSMutableArray* subpredicates = [NSMutableArray array];
			
			[self addChildrenSubpredicatesOfCategory:[sidebarController selectedCategory] toArray:subpredicates];
			
			categoryPredicate = [NSCompoundPredicate orPredicateWithSubpredicates:subpredicates];
		}
		
		// Elenco 
	}
	else if( [sidebarController selectionMode] == 1 && [sidebarController selectedPlaylist] != nil ) // Playlist
	{
		if( [[[sidebarController selectedPlaylist] type] intValue] == 0 ) // Collezione
		{
			categoryPredicate = [NSPredicate predicateWithFormat:@" ANY playlists = %@", [sidebarController selectedPlaylist]];
		}
		else // Ricerca
		{
			smartPlaylistPredicate = [[sidebarController selectedPlaylist] predicate];
		}
	}
	else
	{
	}
	
	NSMutableArray* filterPredicates = [NSMutableArray array];
	
	NSPredicate* filterPredicate = nil;
	
	// Gestisce i due tipi di prezzi (elementari e composti)
	if( [(PricesFilterBarController*)filterBarController showAnalisys] )
		[filterPredicates addObject:[NSPredicate predicateWithFormat:@"analisysRows.@count > 0"]];

	if( [(PricesFilterBarController*)filterBarController showElements] )
		[filterPredicates addObject:[NSPredicate predicateWithFormat:@"analisysRows.@count = 0"]];
	
	if( [filterPredicates count] > 1 )
		filterPredicate = [NSCompoundPredicate orPredicateWithSubpredicates:filterPredicates];
	else if ( [filterPredicates count] == 1 )
		filterPredicate = [filterPredicates objectAtIndex:0];
	
	// Aggiunge i predicati
	NSMutableArray* predicates = [NSMutableArray array];
	
	if( smartPlaylistPredicate )
	{
		//[arrayController setFetchPredicate:smartPlaylistPredicate];
		// return;
		[predicates addObject:smartPlaylistPredicate];
	}
	
	if( [filterBarController isCustomPredicateApplied] && [filterBarController customPredicate] )
		[predicates addObject:[filterBarController customPredicate]];
	
	if( searchPredicate )
		[predicates addObject:searchPredicate];
	
	if( categoryPredicate )
		[predicates addObject:categoryPredicate];
	
	if( filterPredicate )
		[predicates addObject:filterPredicate];
	
	// Crea il predicato finale
	if( [predicates count] == 0 )
		predicate = nil;
	else if( [predicates count] == 1 )
		predicate = [predicates objectAtIndex:0];
	else		
		predicate = [NSCompoundPredicate andPredicateWithSubpredicates:predicates];
	
	[self performSelectorOnMainThread:@selector(setupPredicate:) withObject:predicate waitUntilDone:YES];
	
	[ap release];
}

- (void) setupPredicate:(NSPredicate*)predicate
{
	[arrayController setFetchPredicate:predicate];
}

- (NSString*) newCode
{
	NSString* sep = @".";
	
	NSArray* codeParts = [NSArray arrayWithObject:[[sidebarController selectedCategory] name]];
	
	if( selectedCode != nil )
		codeParts = [selectedCode componentsSeparatedByString:sep];

	int catlevel = 0;
	
	NSString* newCode = @"";
	
	if( [codeParts count] >= catlevel )
	{
		int p=0;
		for( NSString* part in codeParts )
		{
			if( ![newCode isEqualToString:@""] )
				newCode = [newCode stringByAppendingString:sep];
			
			if( p == ([codeParts count]-1) )
			{
				int n = [[NSDecimalNumber decimalNumberWithString:part] intValue];
				if( n >= 0 )
				{
					n++;
					int l = [part length];
					NSString* f;
					switch (l) 
					{
						case 1:
							f = [NSString stringWithFormat:@"%.1d",n];
							break;
						case 2:
							f = [NSString stringWithFormat:@"%.2d",n];
							break;
						case 3:
							f = [NSString stringWithFormat:@"%.3d",n];
							break;
						case 4:
							f = [NSString stringWithFormat:@"%.4d",n];
							break;
						case 5:
							f = [NSString stringWithFormat:@"%.5d",n];
							break;
						case 6:
							f = [NSString stringWithFormat:@"%.6d",n];
							break;
						default:
							f = [NSString stringWithFormat:@"%.4d",n];
							break;
					}
					newCode = [newCode stringByAppendingString:f];
				}
				else // Lettera
				{
					newCode = [newCode stringByAppendingString:sep];
					newCode = [newCode stringByAppendingString:@"01"];
				}
			}
			else
				newCode = [newCode stringByAppendingString:part];
			
			p++;
		}
	}
	else
		newCode = selectedCode;
	
	return newCode;
}


#pragma mark -
#pragma mark Accessors

#pragma mark -
#pragma mark Delegates

#pragma mark Validazione comandi

- (BOOL)validateMenuItem:(NSMenuItem *)menuItem
{
	switch ([menuItem tag]) 
	{
		case 100: // Operazioni su oggetti nella pasteboard
		{
			NSPasteboard* pboard = [NSPasteboard generalPasteboard]; 
			NSData* rowData = [pboard dataForType:@"OrionPrices"]; 
			return (rowData != nil );
		}
			break;
			
		case 101: // Operazioni su selezioni
		{
			return [[arrayController selectedObjects] count] > 0;
		}
			break;
	}
	
	return YES;
}

#pragma mark Observer

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	// Modifica della selezione di questa tabella
    if (context == arrayController) 
	{
		if( [keyPath isEqualToString:@"selection"] )
		{
			[self setSelectedItemsCount:[[arrayController selectedObjects] count]];
			[[NSNotificationCenter defaultCenter] postNotificationName:@"changeCountersNotification" object:self];
			selectedCode = [[arrayController selection] valueForKey:@"code"];
			if( [[arrayController selectedObjects] count] > 0 )
				[priceViewController setRepresentedObject:[arrayController selection]];
		}

		if( [keyPath isEqualToString:@"arrangedObjects"] )
		{
			[self setItemsCount:[[arrayController arrangedObjects] count]];
			[[NSNotificationCenter defaultCenter] postNotificationName:@"changeCountersNotification" object:self];
		}
	}
	else if (context == filterBarController) // Modifica del filtro
	{
		[self requery];
	}
	else if (context == sidebarController) // Modifica della categoria o playlist selezionata nella sidebar
	{
		if( [keyPath isEqualToString:@"selectedCategory"] )
		{
			[self requery];
		}
		if( [keyPath isEqualToString:@"selectedPlaylist"] )
		{
			[self requery];
		}
	}
	else
		[super observeValueForKeyPath:keyPath ofObject:object change:change context:context];

}

#pragma mark TableView

// Valida il drop
- (NSDragOperation)tableView:(NSTableView *)aTableView validateDrop:(id < NSDraggingInfo >)info proposedRow:(NSInteger)row proposedDropOperation:(NSTableViewDropOperation)operation
{
	[aTableView setDropRow:-1 dropOperation:NSTableViewDropOn];
	
	return NSDragOperationMove; 
}

// Inizio drag da qui
- (BOOL) tableView:(NSTableView *)tv writeRowsWithIndexes:(NSIndexSet *)rowIndexes toPasteboard:(NSPasteboard*)pboard 
{ 
	[MOPrices copyArray:[arrayController selectedObjects] toPasteboard:pboard];
	
	return YES; 
} 

// Scarica qui il drag
- (BOOL)tableView:(NSTableView *)aTableView acceptDrop:(id < NSDraggingInfo >)info row:(NSInteger)row dropOperation:(NSTableViewDropOperation)operation
{	
	// Drag di prezzi
	NSPasteboard* pboard = [info draggingPasteboard]; 
	
	NSArray* prices = [MOPrices pricesFromPasteboard:pboard managedObjectContext:[self managedObjectContext]];

	if( prices ) 
	{
		MOCategories* cat = [sidebarController selectedCategory];
		
		for( MOPrices* price in prices )
		{
			if( [price managedObjectContext] != [self managedObjectContext] ) // Drag da prezzario esterno
			{
				BOOL createCategory = [[NSUserDefaults standardUserDefaults] boolForKey:@"CreateOriginalCategoryWhenDraggingFromExternalContext"];
				
				if( !cat && [[NSUserDefaults standardUserDefaults] boolForKey:@"CreateOriginalCategoryWhenDraggingFromExternalContextWithNoCategories"] )
					createCategory = YES;
				
				if( [[[sidebarController treeController1] arrangedObjects] count] == 0 && [[NSUserDefaults standardUserDefaults] boolForKey:@"CreateOriginalCategoryWhenDraggingFromExternalContextWithNoCategories"] )
					createCategory = YES;
				
				MOPrices* newPrice = [price duplicateWithManagedObjectContext:[self managedObjectContext] createCategory:createCategory ];
				
				if( cat && !createCategory )
					[newPrice setCategory:cat];
			}
			else // Drag da prezzario interno
			{
				[[price category] removePricesObject:price];
				
				if( cat )
					[price setCategory:cat];
			}
		}
		
		[[self managedObjectContext] commitEditing];
		
		return YES;
	}
	
	return NO;
}

#pragma mark -
#pragma mark Actions

#pragma mark Copy-Cut-Paste

- (IBAction) copy:(id)sender
{
	// Copia le id nella clipboard
	[MOPrices copyArray:[arrayController selectedObjects] toPasteboard:[NSPasteboard generalPasteboard]];
}

- (IBAction) cut:(id)sender
{
	// Copia le id nella clipboard
	[MOPrices copyArray:[arrayController selectedObjects] toPasteboard:[NSPasteboard generalPasteboard]];

	// Rimuove dalla categoria attuale
	for( MOPrices* price in [arrayController selectedObjects] )
	{
		// Toglie il prezzo dalla categoria corrente
		[[price category] removePricesObject:price];
	}
}

- (IBAction) paste:(id)sender
{
	NSPasteboard* pboard = [NSPasteboard generalPasteboard]; 
	
	NSArray* prices = [MOPrices pricesFromPasteboard:pboard managedObjectContext:[self managedObjectContext]];
	
	if( prices ) 
	{
		MOCategories* cat = [sidebarController selectedCategory];
		
		for( MOPrices* price in prices )
		{
			if( [price managedObjectContext] != [self managedObjectContext] ) // Drag da prezzario esterno
			{
				BOOL createCategory = [[NSUserDefaults standardUserDefaults] boolForKey:@"CreateOriginalCategoryWhenDraggingFromExternalContext"];
				
				if( !cat && [[NSUserDefaults standardUserDefaults] boolForKey:@"CreateOriginalCategoryWhenDraggingFromExternalContextWithNoCategories"] )
					createCategory = YES;
				
				if( [[[sidebarController treeController1] arrangedObjects] count] == 0 && [[NSUserDefaults standardUserDefaults] boolForKey:@"CreateOriginalCategoryWhenDraggingFromExternalContextWithNoCategories"] )
					createCategory = YES;

				MOPrices* newPrice = [price duplicateWithManagedObjectContext:[self managedObjectContext] createCategory:createCategory ];
				
				if( cat && !createCategory )
					[newPrice setCategory:cat];
			}
			else // Drag da prezzario interno
			{
				[[price category] removePricesObject:price];
				
				if( cat )
					[price setCategory:cat];
			}
		}
		
		[[self managedObjectContext] commitEditing];

		[arrayController fetch:self];
	}

}

#pragma mark Altre azioni

- (IBAction) addItem:(id)sender
{
	// Aggiunge un articolo
	
	MOCategories* cat = [sidebarController selectedCategory];
	
	if( cat )
	{
		MOPrices* price = [MOPrices newInManagedObjectContext:[self managedObjectContext]];
		
		[price setCategory:cat];

		[price setCode:[price nextNumberForCode:selectedCode insert:NO]]; 

		
		[arrayController addObject:price];
		
		[[[self view] window] makeFirstResponder:tableView];
	}
	
}

- (IBAction) removeItem:(id)sender
{
}

- (IBAction) showHideInfoPanel:(id)sender
{
}

@end

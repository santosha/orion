//
//  ComputoViewController.m
//  Orion
//
//  Created by Michele Longhi on 13/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "ComputoViewController.h"
#import "MOProjects.h"
#import "MOCategories.h"
#import "MOParts.h"
#import "MOPartRows.h"
#import "MOPrices.h"
#import "ProjectDetailsWindowController.h"
#import "ComputoFilterBarController.h"

@implementation ComputoViewController

@synthesize sortDescriptors;

#pragma mark -
#pragma mark Initalizers

- (void) awakeFromNib
{
	[super awakeFromNib];
	
	// Registra l'ordinamento
	sortDescriptors = [NSArray arrayWithObject:[[[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES] autorelease]];
	[outlineView setSortDescriptors:sortDescriptors];
	[treeController setSortDescriptors:[NSArray arrayWithObject:[[[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES] autorelease]]];
	
	// Filtro
	filterBarController = [[ComputoFilterBarController alloc] initWithNibName:@"ComputoFilterBar" bundle:nil];
	[filterBarController setRepresentedObject:[self representedObject]];
	[filterBarController setSidebarViewController:sidebarController];
	[filterBar addSubview:[filterBarController view]];
	[[filterBarController view] setBoundsOrigin:NSMakePoint(0, 0)];
	[[filterBarController view] setFrameSize:[filterBar frame].size];
	
	// Imposta i drag and drop
	[outlineView registerForDraggedTypes:[NSArray arrayWithObjects:@"OrionPrices",@"OrionParts",nil] ]; 
	[partRowsTableView registerForDraggedTypes:[NSArray arrayWithObjects:@"OrionPrices",nil] ]; 
	
	// Osservatori
	[sidebarController addObserver:self forKeyPath:@"selectedCategory" options:NSKeyValueObservingOptionNew context:sidebarController];
	[sidebarController addObserver:self forKeyPath:@"selectedPlaylist" options:NSKeyValueObservingOptionNew context:sidebarController];
	
	[sidebarController setMode:1];
}

#pragma mark -
#pragma mark  Accessors

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
	// Proviamo ad impostare un predicato per la selezione della categoria
	
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
	
	//NSMutableArray* filterPredicates = [NSMutableArray array];
	
	NSPredicate* filterPredicate = [NSPredicate predicateWithFormat:@" parent == nil"];
	
	// Gestisce i due tipi di prezzi (elementari e composti)
	
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
		[treeController setFetchPredicate:nil];
	else if( [predicates count] == 1 )
		[treeController setFetchPredicate:[predicates objectAtIndex:0]];
	else		
		[treeController setFetchPredicate:[NSCompoundPredicate andPredicateWithSubpredicates:predicates]];
	
}

- (void) showDetailsForProject:(MOProjects*)project callSelector:(SEL)sel
{
	if( !project )
	{
		project = [MOProjects firstProjectInManagedObjectContext:[self managedObjectContext]];
		if( !project )
		{
			[self createNewProjectAndCallSelector:@selector(showDetailsForProject:)];
			return;
		}
	}
	
	ProjectDetailsWindowController* wc = [[ProjectDetailsWindowController alloc] initWithWindowNibName:@"ProjectDetails"];
	
	projectWindow = [wc window];
	[wc setProject:project];
	
	[NSApp beginSheet:projectWindow 
	   modalForWindow:[[self view] window] 
		modalDelegate:self 
	   didEndSelector:@selector(projectPanelDidEnd:returnCode:contextInfo:)
		  contextInfo:sel];
	
}

- (BOOL) createNewProjectAndCallSelector:(SEL)sel
{
	MOProjects* project = [MOProjects newInManagedObjectContext:[self managedObjectContext]];

	[self showDetailsForProject:project callSelector:sel];
	
	return YES;
}

- (void) projectPanelDidEnd:(NSOpenPanel *)panel returnCode:(int)returnCode  contextInfo:(void  *)contextInfo
{
	[panel close];
	
	if( contextInfo )
		[self performSelector:contextInfo withObject:nil];
}

#pragma mark -
#pragma mark Delegates

#pragma mark Observer

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	// Modifica della selezione di questa tabella
    if (context == treeController) 
	{
		if( [keyPath isEqualToString:@"selection"] )
		{
			[self setSelectedItemsCount:[[treeController selectedObjects] count]];
			[[NSNotificationCenter defaultCenter] postNotificationName:@"changeCountersNotification" object:self];
		}
		
		if( [keyPath isEqualToString:@"arrangedObjects"] )
		{
			[self setItemsCount:[[treeController arrangedObjects] count]];
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
- (NSDragOperation)tableView:(NSTableView *)tableView validateDrop:(id < NSDraggingInfo >)info proposedRow:(NSInteger)row proposedDropOperation:(NSTableViewDropOperation)operation
{
	if( tableView == partRowsTableView )
	{
		return NSDragOperationCopy; 
	}
	
	return NSDragOperationNone;
}

// Inizio drag da qui
- (BOOL) tableView:(NSTableView *)tableView writeRowsWithIndexes:(NSIndexSet *)rowIndexes toPasteboard:(NSPasteboard*)pboard 
{ 
	if( tableView == partRowsTableView )
	{
		[MOPrices copyArray:[partRowsController selectedObjects] toPasteboard:pboard];
	}
	
	return YES; 
} 

// Scarica qui il drag
- (BOOL)tableView:(NSTableView *)tableView acceptDrop:(id < NSDraggingInfo >)info row:(NSInteger)row dropOperation:(NSTableViewDropOperation)operation
{	
	if( tableView == partRowsTableView )
	{
		// Drag di prezzi
		NSPasteboard* pboard = [info draggingPasteboard]; 
		
		NSArray* prices = [MOPrices pricesFromPasteboard:pboard managedObjectContext:[self managedObjectContext]];
		
		if( prices ) 
		{
			for( MOPrices* price in prices )
			{
				MOPrices* p = price;
				
				if( [price managedObjectContext] != [self managedObjectContext] ) // Drag da prezzario esterno
				{
					p = [price duplicateWithManagedObjectContext:[self managedObjectContext] createCategory:YES ];					
				}
				
				MOParts* part = [[treeController selectedObjects] objectAtIndex:0];
				
				MOPartRows* partRow = [MOPartRows newInManagedObjectContext:[self managedObjectContext]];
				
				[partRow setPrice:p];
				[partRow setPart:part];
				[partRow setQuantity:[NSNumber numberWithInt:1]];
				
				[partRowsController addObject:partRow];
			}
			return YES;
		}
	}
	
	return NO;
}

#pragma mark OutlineView

// Consenti drop
- (NSDragOperation)outlineView:(NSOutlineView *)oView validateDrop:(id < NSDraggingInfo >)info proposedItem:(id)item proposedChildIndex:(NSInteger)index
{
	[oView setDropItem:item dropChildIndex:-1];
	
	NSDragOperation op = NSDragOperationMove;
	
	return op; 
}

// Inizia drag da qui
- (BOOL)outlineView:(NSOutlineView *)ov writeItems:(NSArray *)items toPasteboard:(NSPasteboard *)pboard
{
	[MOParts copyArray:[treeController selectedObjects] toPasteboard:pboard];
	
	return YES; 
}

// Esegui drop qui
- (BOOL)outlineView:(NSOutlineView *)oView acceptDrop:(id < NSDraggingInfo >)info item:(id)item childIndex:(NSInteger)index
{
	// Drag su categorie
	if( outlineView == oView ) 
	{
		MOParts* part = [item representedObject];
		
		// Drag di prezzi
		NSPasteboard* pboard = [info draggingPasteboard]; 
		NSArray* prices = [MOPrices pricesFromPasteboard:pboard managedObjectContext:[self managedObjectContext]];
		if( prices ) 
		{
			for( MOPrices* price in prices )
			{
				MOPrices* p = price;
				
				if( [price managedObjectContext] != [self managedObjectContext] ) // Drag da prezzario esterno
				{
					p = [price duplicateWithManagedObjectContext:[self managedObjectContext] createCategory:YES ];
				}
				
				MOPartRows* partRow = [MOPartRows newInManagedObjectContext:[self managedObjectContext]];
				
				[partRow setPrice:p];
				[partRow setPart:part];
				[partRow setQuantity:[NSNumber numberWithInt:1]];
				
				[partRowsController addObject:partRow];
			}
			return YES;
		}
		
		// Drag di parti
		NSData* rowData = [pboard dataForType:@"OrionParts"]; 
		if( rowData) 
		{
			NSArray* parts = [MOParts partsFromPasteboard:pboard managedObjectContext:[self managedObjectContext]];
			
			for( MOParts* p in parts )
			{
				[p setParent:part];
			}
			
			return YES;
		}		
	}
	
	return NO;
}


#pragma mark -
#pragma mark Actions

- (IBAction) addItem:(id)sender
{
	// Aggiunge una misura di computo
	MOCategories* cat = [sidebarController selectedCategory];
	
	/*
	MOProjects* project = [MOProjects firstProjectInManagedObjectContext:[self managedObjectContext]];
	
	if( !project ) // Nessun progetto...lo crea
	{
		[self createNewProjectAndCallSelector:@selector(addItem:)];
	}
	 */
	
	if( cat )
	{
		MOParts* part = [MOParts newInManagedObjectContext:[self managedObjectContext]];
		
		[part setName:@"Nuova parte"];
		[part setCategory:cat];
		
		[treeController addObject:part];
		
		[[[self view] window] makeFirstResponder:outlineView];
	}
	
}

- (IBAction) removeItem:(id)sender
{
}

- (IBAction) projectMergeParts:(id)sender
{
	if( [[treeController selectedObjects] count] > 1 )
	{
		MOParts* mainPart = [[treeController selectedObjects] objectAtIndex:0];
		
		NSArray* array = [[treeController selectedObjects] copy];
		
		for( int i=0 ; i<[array count] ; i++  )
		{
			MOParts* part = [array objectAtIndex:i];
			
			if( part != mainPart )
			{
				// Cambia le relazioni dei figli della parte
				for( MOPartRows* partRow in [part partRowsSet] )
				{
					[partRow setPart:mainPart];
				}
				
				// Rimuove la parte vecchia
				[[self managedObjectContext] deleteObject:part ];
			}
		}
	}
}

- (IBAction) projectStructureParts:(id)sender
{
	if( [[treeController selectedObjects] count] > 1 )
	{
		MOParts* mainPart = [[treeController selectedObjects] objectAtIndex:0];
		
		NSArray* array = [[treeController selectedObjects] copy];
		
		for( int i=0 ; i<[array count] ; i++  )
		{
			MOParts* part = [array objectAtIndex:i];
			
			if( part != mainPart )
			{
				[part setParent:mainPart];
			}
		}
	}
}

@end

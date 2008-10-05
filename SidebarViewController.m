//
//  SidebarViewController.m
//  Orion
//
//  Created by Michele Longhi on 12/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "SidebarViewController.h"

#import "MOPrices.h"
#import "MOCategories.h"
#import "MOPlaylists.h"
#import "MOParts.h"

#import "CategoryCell.h"
#import "PlaylistCell.h"

@implementation SidebarViewController

@synthesize treeController1,treeController2,mode,selectionMode;

#pragma mark -
#pragma mark Initializers

- (void) awakeFromNib
{
	// Ordinamento
	NSSortDescriptor* sd1 = [[[NSSortDescriptor alloc] initWithKey:@"code" ascending:YES] autorelease];
	NSSortDescriptor* sd2 = [[[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES] autorelease];
	[treeController1 setSortDescriptors:[NSArray arrayWithObjects:sd1,sd2,nil]];
	[outlineView1 setSortDescriptors:[NSArray arrayWithObjects:sd1,sd2,nil]];
	[treeController2 setSortDescriptors:[NSArray arrayWithObjects:sd2,nil]];
	[outlineView2 setSortDescriptors:[NSArray arrayWithObjects:sd2,nil]];
	
	// Impostazione osservatori
	[treeController1 addObserver:self forKeyPath:@"selection" options:NSKeyValueObservingOptionNew context:nil];
	[treeController2 addObserver:self forKeyPath:@"selection" options:NSKeyValueObservingOptionNew context:nil];
	
	[outlineView1 setDoubleAction:@selector(showCategoryDetails:)];
	[outlineView2 setDoubleAction:@selector(editPlaylist:)];
	
	[categoryHeader1 setMode:0];
	[categoryHeader2 setMode:2];
	
	[self setSelectionMode:0];
	
	// Predicate editor
	optionsVisible = NO;
	editMode = 0;
	
	[self notifySelectionForItem:1];
}

#pragma mark -
#pragma mark Methods

// Notifica il cambio di selezione in una delle outline
- (void) notifySelectionForItem:(int)itemIndex
{
	switch (itemIndex) 
	{
		case 1: // Categorie
			[self willChangeValueForKey:@"selectedCategory"];
			[self willChangeValueForKey:@"selectionMode"];
			selectionMode = 0;
			[outlineView2 deselectAll:self];
			[self didChangeValueForKey:@"selectionMode"];
			[self didChangeValueForKey:@"selectedCategory"];
			break;
		case 2: // Playlist
			[self willChangeValueForKey:@"selectedPlaylist"];
			[self willChangeValueForKey:@"selectionMode"];
			selectionMode = 1;
			[outlineView1 deselectAll:self];
			[self didChangeValueForKey:@"selectionMode"];
			[self didChangeValueForKey:@"selectedPlaylist"];
			break;
	}
}

- (void) resizePanel:(NSWindow*)panel size:(NSSize)size
{
	NSView* oldContent = [panel contentView];
	
	NSView* blankView = [[NSView alloc] init];
	
	[panel setContentView:blankView];
	
	NSRect wFrame = [NSWindow contentRectForFrameRect:[panel frame] styleMask:[panel styleMask]];
	
	wFrame.origin.y += (wFrame.size.height - size.height);
	wFrame.size.height = size.height;
	wFrame.size.width = size.width;
	
	wFrame = [NSWindow frameRectForContentRect:wFrame styleMask:[panel styleMask]];
	
	[panel setFrame:wFrame display:YES animate:YES];
	
	[panel setContentView:oldContent];
	[oldContent setBoundsOrigin:NSMakePoint(0, 0)];
	
	[blankView release];
}

- (void) addNewSmartPlaylistNamed:(NSString*)name withPredicate:(NSPredicate*)predicate
{
	MOPlaylists* pl = [MOPlaylists newInManagedObjectContext:[self managedObjectContext]];
	[pl setName:name];
	[pl setMode:[NSNumber numberWithInt:[self mode]]];
	
	switch ([self mode]) 
	{
		case 0: // Elenco prezzi
			[pl setType:[NSNumber numberWithInt:10]];
			break;
		case 1: // Computo
			// TODO: Implementare le 2 modalità di computo
			[pl setType:[NSNumber numberWithInt:20]]; // Modalità articoli
			break;
	}
	
	if( predicate )
		[pl setPredicate:predicate];
	
	[treeController2 fetch:self];
	[[[self view] window] makeFirstResponder:outlineView2];
}

#pragma mark -
#pragma mark Accessors

- (NSManagedObjectContext*) managedObjectContext
{
	return [(NSPersistentDocument*)[self representedObject] managedObjectContext];
}

- (id) selectedCategory
{
	if( [[treeController1 selectedObjects] count] > 0 )
		return [[treeController1 selectedObjects] objectAtIndex:0];
	
	return nil;
}

- (id) selectedPlaylist
{
	if( [[treeController2 selectedObjects] count] > 0 )
		return [[treeController2 selectedObjects] objectAtIndex:0];
	
	return nil;
}

- (void) setMode:(int)mode_
{
	[self willChangeValueForKey:@"mode"];
	mode = mode_;
	[self didChangeValueForKey:@"mode"];
	
	switch (mode) 
	{
		case 0:
			// Registrazione tipi di drag
			[outlineView1 registerForDraggedTypes:[NSArray arrayWithObjects:@"OrionPrices",@"OrionCategories",nil] ]; 
			[outlineView2 registerForDraggedTypes:[NSArray arrayWithObjects:@"OrionPrices",@"OrionPlaylists",nil] ];
			[categoryHeader1 setMode:0];
			[splitter setAutosaveName:@"sidebarSplitterMode0"];
			break;
		case 1:
			// Registrazione tipi di drag
			[outlineView1 registerForDraggedTypes:[NSArray arrayWithObjects:@"OrionParts",@"OrionCategories",nil] ]; 
			[outlineView2 registerForDraggedTypes:[NSArray arrayWithObjects:@"OrionParts",@"OrionPlaylists",nil] ]; 
			[categoryHeader1 setMode:1];
			[splitter setAutosaveName:@"sidebarSplitterMode1"];
			break;
	}
	
	NSPredicate* predicate = [NSPredicate predicateWithFormat:@" parent == nil AND mode = %d", mode];
	[treeController1 setFetchPredicate:predicate];
	[treeController2 setFetchPredicate:predicate];	
}

#pragma mark -
#pragma mark Actions

- (IBAction) addParentCategory:(id)sender
{
	MOCategories* cat = [MOCategories newInManagedObjectContext:[self managedObjectContext]];
	[cat setName:@"Nuova categoria"];
	[cat setMode:[NSNumber numberWithInt:[self mode]]];
	[cat setType:[NSNumber numberWithInt:0]];
	
	[treeController1 fetch:self];
	[[[self view] window] makeFirstResponder:outlineView1];
}

- (IBAction) addChildCategory:(id)sender
{
	MOCategories* cat = [MOCategories newInManagedObjectContext:[self managedObjectContext]];
	[cat setName:@"Nuova sottocategoria"];
	[cat setMode:[NSNumber numberWithInt:[self mode]]];
	[cat setType:[NSNumber numberWithInt:0]];
	
	// se presente, copia l'icona dal genitore
	if( [[self selectedCategory] icon] )
		[cat setIcon:(NSData*)[[self selectedCategory] icon]];
	
	[[self selectedCategory] addChildrenObject:cat];

	[treeController1 fetch:self];
	[[[self view] window] makeFirstResponder:outlineView1];
}

- (IBAction) removeCategory:(id)sender
{
	if( NSRunAlertPanel(@"Cancellazione categoria", @"Attenzione: confermi la cancellazione della categoria selezionata? Tutti le sottocategorie e gli articoli presenti saranno eliminati.\n", @"Annulla", @"Elimina", nil) == NSAlertAlternateReturn )
	{
		[treeController1 remove:self];
	}
}

- (IBAction) removePlaylist:(id)sender
{
	[treeController2 remove:self];
}


- (IBAction) addPlaylistFolder:(id)sender
{
}

- (IBAction) addPlaylist:(id)sender
{
	MOPlaylists* pl = [MOPlaylists newInManagedObjectContext:[self managedObjectContext]];
	[pl setName:@"Nuova collezione"];
	[pl setMode:[NSNumber numberWithInt:[self mode]]];
	[pl setType:[NSNumber numberWithInt:0]];
	
	[treeController2 fetch:self];
	[[[self view] window] makeFirstResponder:outlineView2];
}

- (IBAction) addSmartPlaylist:(id)sender
{
	[self addNewSmartPlaylistNamed:@"Nuova ricerca" withPredicate:nil];
}

- (IBAction) showCategoryDetails:(id)sender
{
	editMode = 1;

	[self showHideOptions:self];

	[NSApp beginSheet:categoryPanel
	   modalForWindow:[[self view] window]
		modalDelegate:self 
	   didEndSelector:nil 
		  contextInfo:nil];

}

- (IBAction) closeCategoryDetails:(id)sender
{
	[outlineView1 reloadData];
	[categoryPanel close];
	[NSApp endSheet:categoryPanel];
	
	editMode = 0;
	
	[self willChangeValueForKey:@"selectedCategory"];
	[self didChangeValueForKey:@"selectedCategory"];
}

- (IBAction) showPlaylistDetails:(id)sender
{
	[NSApp beginSheet:playlistPanel
	   modalForWindow:[[self view] window]
		modalDelegate:self 
	   didEndSelector:nil 
		  contextInfo:nil];
	
	editMode = 2;
}

- (IBAction) closePlaylistDetails:(id)sender
{
	[outlineView2 reloadData];
	[playlistPanel close];
	[NSApp endSheet:playlistPanel];
	
	editMode = 0;
}

- (IBAction) showSmartPlaylistDetails:(id)sender
{
	// Imposta il predicato
	/*
	[predicateEditor setRowTemplates:[self predicateEditorTemplates]];
	if( ![[self selectedPlaylist] predicate] )
	{
		[predicateEditor addRow:self];
	}
	 */

	if( !predicateWindowController )
		predicateWindowController = [[PredicateWindowController alloc] initWithWindowNibName:@"Predicates"];
	[predicateWindowController setPredicate:nil];
	
	[predicateWindowController window];	
	editMode = 3;
	
	[NSApp beginSheet:smartPlaylistPanel
	   modalForWindow:[[self view] window]
		modalDelegate:self 
	   didEndSelector:nil 
		  contextInfo:nil];
	
	[predicateWindowController setPredicate:[[self selectedPlaylist] predicate]];
	[predicateWindowController setupView:predicateEditorView forType:[[[self selectedPlaylist] type] intValue]];
}

- (IBAction) closeSmatPlaylistDetails:(id)sender
{
	[[self selectedPlaylist] setPredicate:[predicateWindowController predicate]];
	
	// Aggiorna la selezione per rigenerare la query
	[self willChangeValueForKey:@"selectedPlaylist"];
	[self didChangeValueForKey:@"selectedPlaylist"];
	
	[outlineView2 reloadData];
	[smartPlaylistPanel close];
	[NSApp endSheet:smartPlaylistPanel];
	
	editMode = 0;
}

- (IBAction) editPlaylist:(id)sender
{
	int type = [[[treeController2 selection] valueForKey:@"type"] intValue];
	
	switch (type) 
	{
		case 0: // Playlist normale
			[self showPlaylistDetails:self];
			break;
		case 10: // Playlist di ricerca
		case 20:
		case 21:
			[self showSmartPlaylistDetails:self];
			break;
	}
}

// Mostra nasconde le opzioni della categoria
- (IBAction) showHideOptions:(id)sender
{
	if( sender != self )
		optionsVisible = !optionsVisible;
	
	switch (editMode) 
	{
		case 1: // Categorie
			if( optionsVisible )
			{
				[categoryOptions setHidden:NO];
				[self resizePanel:categoryPanel size:NSMakeSize(516,330)];	
			}
			else
			{
				[categoryOptions setHidden:YES];
				[self resizePanel:categoryPanel size:NSMakeSize(516,224)];
			}
			[categoryPanel makeFirstResponder:categoryName];
			break;
	}
}

#pragma mark -
#pragma mark Delegates

#pragma mark Observer

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context 
{
	if( [keyPath isEqualToString:@"selection"] )
	{
		if( object == treeController1 ) // Cambio selezione nelle categorie
		{
			if( [[treeController1 selectedNodes] count] > 0 || [[treeController2 selectedNodes] count] == 0)
				[self notifySelectionForItem:1];
		}
		
		if( object == treeController2 ) // Cambio selezione nelle collezioni
		{
			if( [[treeController2 selectedNodes] count] > 0 || [[treeController1 selectedNodes] count] == 0 )
				[self notifySelectionForItem:2];
		}
	}
}

#pragma mark OutlineView

// Consenti drop
- (NSDragOperation)outlineView:(NSOutlineView *)oView validateDrop:(id < NSDraggingInfo >)info proposedItem:(id)item proposedChildIndex:(NSInteger)index
{
	[oView setDropItem:item dropChildIndex:-1];
	
	NSDragOperation op = NSDragOperationCopy;
	
	if( !item ) // Drag nell'area vuota
	{
		// MOCategories* cat = [item representedObject];
		
		if( [[treeController1 arrangedObjects] count] == 0 && [[NSUserDefaults standardUserDefaults] boolForKey:@"CreateOriginalCategoryWhenDraggingFromExternalContextWithNoCategories"]  )
			return op;
		
		if( ![[NSUserDefaults standardUserDefaults] boolForKey:@"CreateNewCategoryWhenDraggingIntoEmptyArea"] )
			return op;
	}
	
	// TODO: Determina se è uno spostamento
	// TODO: Impedisce drag di genitori sotto i figli
	
	
	return op; 
}

// Inizia drag da qui
- (BOOL)outlineView:(NSOutlineView *)ov writeItems:(NSArray *)items toPasteboard:(NSPasteboard *)pboard
{
	NSMutableArray* array = [NSMutableArray array];
	
	for( NSTreeNode* item in items )
	{
		NSURL* objectURL = [[[item representedObject] objectID] URIRepresentation];
		[array addObject:objectURL];
	}
	
	NSData *data = [NSKeyedArchiver archivedDataWithRootObject:array]; 
	
	if( ov == outlineView1 ) // Categorie
	{
		[pboard declareTypes:[NSArray arrayWithObject:@"OrionCategories"] owner:self]; 
		[pboard setData:data forType:@"OrionCategories"];
	}
	else // Collezioni
	{
		[pboard declareTypes:[NSArray arrayWithObject:@"OrionPlaylists"] owner:self]; 
		[pboard setData:data forType:@"OrionPlaylists"];
	}
	
	return YES; 
}

// Esegui drop qui
- (BOOL)outlineView:(NSOutlineView *)outlineView acceptDrop:(id < NSDraggingInfo >)info item:(id)item childIndex:(NSInteger)index
{
	// Drag su categorie
	if( outlineView == outlineView1 ) 
	{
		MOCategories* cat = [item representedObject];
		BOOL newCat = NO;
		
		// Drag di prezzi
		NSPasteboard* pboard = [info draggingPasteboard]; 
		NSArray* prices = [MOPrices pricesFromPasteboard:pboard managedObjectContext:[self managedObjectContext]];
		if( prices ) 
		{
			if( !cat )
			{
				newCat = YES;
			}
			
			[self willChangeValueForKey:@"selectedCategory"];
			
			for( MOPrices* price in prices )
			{
				if( [price managedObjectContext] != [self managedObjectContext] ) // Drag da prezzario esterno
				{
					BOOL createCategory = [[NSUserDefaults standardUserDefaults] boolForKey:@"CreateOriginalCategoryWhenDraggingFromExternalContext"];
					
					if( !createCategory && [[NSUserDefaults standardUserDefaults] boolForKey:@"CreateOriginalCategoryWhenDraggingIntoEmptyArea"] )
					{
						if( newCat )
							createCategory = YES;
					}
					
					if( [[NSUserDefaults standardUserDefaults] boolForKey:@"CreateOriginalCategoryWhenDraggingFromExternalContextWithNoCategories"] )
						createCategory = YES;
					
					MOPrices* newPrice = [price duplicateWithManagedObjectContext:[self managedObjectContext] createCategory:createCategory ];
					
					if( !createCategory )
					{
						if( !cat )
						{
							cat = [MOCategories newInManagedObjectContext:[self managedObjectContext]];
							[cat setName:@"Nuova categoria"];
							[cat setMode:[NSNumber numberWithInt:[self mode]]];
							[cat setType:[NSNumber numberWithInt:0]];
							[newPrice setCategory:cat];
						}
						
						[newPrice setCategory:cat];
					}
				}
				else // Drag da prezzario interno
				{
					if( !cat )
					{
						cat = [MOCategories newInManagedObjectContext:[self managedObjectContext]];
						[cat setName:@"Nuova categoria"];
						[cat setMode:[NSNumber numberWithInt:[self mode]]];
						[cat setType:[NSNumber numberWithInt:0]];
					}
					
					[[price category] removePricesObject:price];
					[price setCategory:cat];
				}
			}
			
			[[self managedObjectContext] commitEditing];
			
			if( newCat )
			{
				[self notifySelectionForItem:1];
			}
			
			[self didChangeValueForKey:@"selectedCategory"];
			
			return YES;
		}
		
		// Drag di categorie
		cat = [item representedObject];
		NSData* rowData = [pboard dataForType:@"OrionCategories"]; 
		if( rowData) 
		{
			NSArray* array = [NSKeyedUnarchiver unarchiveObjectWithData:rowData]; 
			
			[self willChangeValueForKey:@"selectedCategory"];
			for( NSURL* url in array )
			{
				NSManagedObjectID* ID = [[[self managedObjectContext] persistentStoreCoordinator] managedObjectIDForURIRepresentation:url];
				MOCategories* c = (MOCategories*)[[self managedObjectContext] objectWithID:ID];
				
				if( [c parent] )
				{
					[[c parent] removeChildrenObject:c];
				}
				
				[c setParent:cat];
			}
			[treeController1 fetch:self];
			[outlineView reloadData];
			[self didChangeValueForKey:@"selectedCategory"];
			
			[[self managedObjectContext] commitEditing];
			
			return YES;
		}	
		
		// Drag di parti 
		NSArray* parts = [MOParts partsFromPasteboard:pboard managedObjectContext:[self managedObjectContext]];
		if( parts )
		{
			for( MOParts* part in parts )
			{
				if( [part managedObjectContext] != [self managedObjectContext] ) // Drag da progetto esterno
				{
					return NO;
				}
				else // Drag interno
				{
					[part setCategory:cat];
				}
			}
			
			return YES;
		}
	}
	
	// Drag su collezioni
	if( outlineView == outlineView2 ) 
	{
		MOPlaylists* pl = [item representedObject];
		BOOL newPL = NO;
		
		if( !pl )
		{
			newPL = YES;
			
			if( !pl )
			{
				pl = [MOPlaylists newInManagedObjectContext:[self managedObjectContext]];
				[pl setName:@"Nuova collezione"];
				[pl setMode:[NSNumber numberWithInt:[self mode]]];
				[pl setType:[NSNumber numberWithInt:0]];
			}
		}
		
		// Drag di prezzi
		NSPasteboard* pboard = [info draggingPasteboard]; 
		NSArray* prices = [MOPrices pricesFromPasteboard:pboard managedObjectContext:[self managedObjectContext]];
		if( prices ) 
		{
			for( MOPrices* price in prices )
			{
				if( [price managedObjectContext] != [self managedObjectContext] ) // Drag da prezzario esterno
				{
					// Attualmente non è consentito trascinare direttamente sulle collezioni dall'estero
					
					NSRunAlertPanel(@"Operazione non consentita", @"Non è consentito trascinare articoli da un archivio esterno direttamente in una collezione.\nPuoi aggiungere ad una collezione solo articoli già importati.", @"OK", nil, nil);
					return NO;
				}
				else // Drag da prezzario interno
				{
					[pl addPricesObject:price];
				}
			}
			
			[[self managedObjectContext] commitEditing];
			
			if( newPL )
			{
				[self notifySelectionForItem:2];
			}
			
			return YES;
		}
		
		// Drag di parti 
		NSArray* parts = [MOParts partsFromPasteboard:pboard managedObjectContext:[self managedObjectContext]];
		if( parts )
		{
			if( !pl )
			{
				newPL = YES;
			}
			
			for( MOParts* part in parts )
			{
				if( [part managedObjectContext] != [self managedObjectContext] ) // Drag da progetto esterno
				{
					return NO;
				}
				else // Drag interno
				{
					[pl addPartsObject:part];
				}
			}
			
			return YES;
		}
	}
	
	return NO;
}

- (NSCell *) outlineView:(NSOutlineView *)outlineView dataCellForTableColumn:(NSTableColumn *)tableColumn item:(id)item
{	
	// Categorie
	if( [[item representedObject] class] == [MOCategories class] ) // Livello principale	
	{
		if( [[tableColumn identifier] isEqualToString:@"name"] )
		{
			MOCategories* cat = [item representedObject];
			
			CategoryCell* cell = [[[CategoryCell alloc] initTextCell:[cat name]] autorelease];
			
			[cell setImage:[cat image]];
			[cell setCode:[cat code]];
			[cell setTruncatesLastVisibleLine:YES];
			[cell setIsChild:[cat parent] != nil];
			
			return cell;
		}
		
		return nil;
	}
	
	// Collezioni
	if( [[item representedObject] class] == [MOPlaylists class] ) // Livello principale	
	{
		if( [[tableColumn identifier] isEqualToString:@"name"] )
		{
			MOPlaylists* pl = [item representedObject];
			
			PlaylistCell* cell = [[[CategoryCell alloc] initTextCell:[pl name]] autorelease];
			switch ([[pl type] intValue]) 
			{
				case 0:
					[cell setImage:[NSImage imageNamed:@"EventCollection.tif"] ];
					break;
				case 10:
				case 20:
				case 21:
					[cell setImage:[NSImage imageNamed:@"EventCollectionSmart.tif"] ];
					break;
			}
			[cell setTruncatesLastVisibleLine:YES];
			[cell setIsChild:NO];
			
			return cell;
		}
		
		return nil;
	}
	
	return nil;
}
@end

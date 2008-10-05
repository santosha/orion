//
//  PricesDocument.m
//  Orion
//
//  Created by Michele Longhi on 31/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "MainDocument.h"
#import "PricesViewController.h"
#import "MOPrices.h"
#import "MOCategories.h"
#import "MOAnalisys.h"
#import "UMTransformer.h"
#import "MOParts.h"
#import "MOPartRows.h"
#import "MOMeasures.h"

@implementation MainDocument

@synthesize searchPredicate,itemsCount,selectedItemsCount;

- (id)init 
{
    self = [super init];
    if (self != nil) 
	{
        // initialization code
    }
    return self;
}

- (void) newWindow:(id)sender
{
	// TODO: Nuova finestra dello stesso documento
}

- (void)windowControllerDidLoadNib:(NSWindowController *)windowController 
{
	[super windowControllerDidLoadNib:windowController];
	
	// Inizializza i transformers usati dall'applicazione
    [NSValueTransformer setValueTransformer:[[UMTransformer alloc] init] forName:@"UMTransformer"];
	
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeCounters:) name:@"changeCountersNotification" object:nil];

	[self composeStatusMessage];
	
	[self setFilterBarVisible:YES];
}

#pragma mark -
#pragma mark Accessors

- (void) setSearchPredicate:(NSPredicate*)predicate
{
	[viewController changedSearchPredicate:predicate];
}

- (void) setFilterBarVisible:(BOOL)visible
{
	[self willChangeValueForKey:@"filterBarVisible"];
	[viewController setFilterBarVisible:visible];
	[self didChangeValueForKey:@"filterBarVisible"];
}

- (BOOL) filterBarVisible
{
	return [viewController filterBarVisible];
}

#pragma mark -
#pragma mark Actions

- (IBAction) fastSearch:(id)sender
{
	[[mainView window] makeFirstResponder:searchField];
}

- (IBAction) importXPWE:(id)sender
{
	NSOpenPanel* openPanel = [NSOpenPanel openPanel];
	
	[openPanel beginSheetForDirectory:nil 
								 file:nil 
								types:[NSArray arrayWithObject:@"XPWE"]
					   modalForWindow:[mainView window] 
						modalDelegate:self
					   didEndSelector:@selector(openPanelDidEnd:returnCode:contextInfo:)
						  contextInfo:@"XPWE"];
}

- (IBAction) importCSVS:(id)sender
{
	NSOpenPanel* openPanel = [NSOpenPanel openPanel];
	
	[openPanel beginSheetForDirectory:nil 
								 file:nil 
								types:[NSArray arrayWithObject:@"CSV"]
					   modalForWindow:[mainView window] 
						modalDelegate:self
					   didEndSelector:@selector(openPanelDidEnd:returnCode:contextInfo:)
						  contextInfo:@"CSVS"];
}

// Determinazione del file di importazione dal pannello di selezione
- (void) openPanelDidEnd:(NSOpenPanel *)panel returnCode:(int)returnCode  contextInfo:(void  *)contextInfo
{
	if( [(NSString*)contextInfo isEqualToString:@"XPWE"] && returnCode == NSOKButton )
	{
		[panel close];
		
		[NSApp beginSheet:importPanel 
		   modalForWindow:[mainView window] 
			modalDelegate:self 
		   didEndSelector:nil 
			  contextInfo:nil];
		
		[progressIndicator startAnimation:self];
		
		[NSThread detachNewThreadSelector:@selector(importXPWEForFilename:) toTarget:self withObject:[panel filename]];
		
		return;
	}
	
	if( [(NSString*)contextInfo isEqualToString:@"CSVS"] && returnCode == NSOKButton )
	{
		[panel close];
		
		[NSApp beginSheet:importPanel 
		   modalForWindow:[mainView window] 
			modalDelegate:self 
		   didEndSelector:nil 
			  contextInfo:nil];
		
		[progressIndicator startAnimation:self];
		
		// [NSThread detachNewThreadSelector:@selector(importCSVSForFilename:) toTarget:self withObject:[panel filename]];
		[self importCSVSForFilename:[panel filename]];
	}
}

// Aggiorna la progress bar
- (void) updateProgress:(NSNumber*) value
{
	if( [value doubleValue] >= 0.0 )
	{
		[progressIndicator setIndeterminate:NO];
		[progressIndicator setDoubleValue:[value doubleValue]];
	}
	else 
	{
		[progressIndicator setIndeterminate:YES];
	}
	
}

- (void) closeImportPanel
{
	[NSApp endSheet:importPanel];
	[importPanel close];
}

// Mostra il pannello dei prezzi
- (IBAction) showPricesPanel:(id)sender
{
	if( !pricesPanelController )
	{
		pricesPanelController = [[PricesPanelController alloc] initWithWindowNibName:@"PricesPanel"];
		[pricesPanelController setManagedObjectContext:[self managedObjectContext]];
	}
	
	[pricesPanelController showWindow:self];
}

#pragma mark -
#pragma mark Methods

// Compone il testo della barra di stato in funzione dei contatori
- (void) composeStatusMessage
{
	NSString* message = @"";
	
	if( [self itemsCount] == 0 )
	{
		message = @"Nessun elemento";	
	}
	else if( [self selectedItemsCount] == 0 )
	{
		if( [self itemsCount] == 1 )
			message = @"Un elemento visualizzato";
		else
			message = [NSString stringWithFormat:@"%d elementi visualizzati", [self itemsCount]];
	}
	else
	{
		if( [self itemsCount] == 1 && [self selectedItemsCount] == 1 )
		{
			message = @"Un elemento selezionato su uno visualizzato";
		}
		else if( [self selectedItemsCount] == 1 )
		{
			message = [NSString stringWithFormat:@"Un elemento selezionato su %d visualizzati",[self itemsCount]];
		}
		else
		{
			message = [NSString stringWithFormat:@"%d elementi selezionati su %d visualizzati",[self selectedItemsCount],[self itemsCount]];
		}
	}
	
	[statusMessage setStringValue:message];
}

// Aggiorna i contatori nella barra di stato
- (void) changeCounters:(NSNotification*)notification
{
	// Verifica che la notifica provenga dalla vista attiva di questa finestra
	if( viewController == [notification object] ) 
	{
		[self setItemsCount:[[notification object] itemsCount]];
		[self setSelectedItemsCount:[[notification object] selectedItemsCount]];
		[self composeStatusMessage];
	}
}

// Parsing di file CSV in array
-(NSArray *) readCSVFromURL:(NSURL*)absoluteURL error:(NSError **) outError
{
	NSString *fileString = [NSString stringWithContentsOfURL:absoluteURL encoding:NSISOLatin2StringEncoding error:outError];

	if( *outError )
	{
		return nil;
	}
	
    NSMutableArray *rows = [NSMutableArray array];
	
    // Get newline character set
    NSMutableCharacterSet *newlineCharacterSet = (id)[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
    [newlineCharacterSet formIntersectionWithCharacterSet:[[NSCharacterSet whitespaceCharacterSet] invertedSet]];
	
    // Characters that are important to the parser
    NSMutableCharacterSet *importantCharactersSet = (id)[NSMutableCharacterSet characterSetWithCharactersInString:@";\""];
    [importantCharactersSet formUnionWithCharacterSet:newlineCharacterSet];
	
    // Create scanner, and scan string
    NSScanner *scanner = [NSScanner scannerWithString:fileString];
    [scanner setCharactersToBeSkipped:nil];
    while ( ![scanner isAtEnd] ) 
	{        
        BOOL insideQuotes = NO;
        BOOL finishedRow = NO;
        NSMutableArray *columns = [NSMutableArray arrayWithCapacity:10];
        NSMutableString *currentColumn = [NSMutableString string];
        while ( !finishedRow ) 
		{
            NSString *tempString;
			
            if ( [scanner scanUpToCharactersFromSet:importantCharactersSet intoString:&tempString] ) 
			{
                [currentColumn appendString:tempString];
            }
			
            if ( [scanner isAtEnd] ) 
			{
				/*
                if ( ![currentColumn isEqualToString:@""] ) 
					[columns addObject:currentColumn];
				 */
				[columns addObject:currentColumn];
                finishedRow = YES;
            }
            else if ( [scanner scanCharactersFromSet:newlineCharacterSet intoString:&tempString] ) 
			{
                if ( insideQuotes ) 
				{
                    // Add line break to column text
                    [currentColumn appendString:tempString];
                }
                else 
				{
                    // End of row
					/*
                    if ( ![currentColumn isEqualToString:@""] ) 
						[columns addObject:currentColumn];
					 */
					[columns addObject:currentColumn];
                    finishedRow = YES;
                }
            }
            else if ( [scanner scanString:@"\"" intoString:NULL] ) 
			{
                if ( insideQuotes && [scanner scanString:@"\"" intoString:NULL] ) 
				{
                    // Replace double quotes with a single quote in the column string.
                    [currentColumn appendString:@"\""]; 
                }
                else 
				{
                    // Start or end of a quoted string.
                    insideQuotes = !insideQuotes;
                }
            }
            else if ( [scanner scanString:@";" intoString:NULL] ) 
			{  
                if ( insideQuotes ) 
				{
                    [currentColumn appendString:@";"];
                }
                else 
				{
                    // This is a column separating comma
                    [columns addObject:currentColumn];
                    currentColumn = [NSMutableString string];
                    [scanner scanCharactersFromSet:[NSCharacterSet whitespaceCharacterSet] intoString:NULL];
                }
            }
			
        }
        if ( [columns count] > 0 ) 
			[rows addObject:columns];
    }
	
    return rows;
}

// Importazione CSV della regione sardegna
- (void) importCSVSForFilename:(NSString*)filename
{
	NSLog(@"Importazione file XWPE %@",filename);
	
	NSAutoreleasePool* ap = [[NSAutoreleasePool alloc] init];
	
	NSError* error = nil;
	NSURL* url = [NSURL fileURLWithPath:filename];
	
	NSArray* rows = [self readCSVFromURL:url error:&error];
	
	if( !error )
	{
		// Imposta la progressbar
		[progressIndicator setIndeterminate:NO];
		[progressIndicator setMinValue:0];
		[progressIndicator setMaxValue:[rows count]];

		MOPrices* price = nil;
		MOCategories* cat = nil;
		NSString* lastcatcode = @"";
		int subPriceOrder = 1;
		
		// Scorre tutte le righe del file
		int rowIndex = 0;
		for( NSArray* fields in rows )
		{
			// Aggiorna la progress
			[self performSelectorOnMainThread:@selector(updateProgress:) withObject:[NSNumber numberWithInt:rowIndex] waitUntilDone:NO];

			// Salta la prima riga
			if( rowIndex == 0 || fields == nil || [fields count] == 0)
			{			
				rowIndex++;
				continue;
			}
			
			if( ![[fields objectAtIndex:0] isEqualToString:@""] ) // Prezzo
			{
				price = [MOPrices newInManagedObjectContext:[self managedObjectContext]];
				
				NSString* order = [fields objectAtIndex:0];
				order = [order stringByReplacingOccurrencesOfString:@" " withString:@""];
				[price setOrderNumber:[NSNumber numberWithInt:[order intValue]]];
				[price setCode:[fields objectAtIndex:1]];
				[price setBriefDescription:[fields objectAtIndex:3]];
				
				subPriceOrder = 1;
				
				// Aggiunge la categoria
				NSString* catCode = [[price code] substringToIndex:1];
				if( ![catCode isEqualToString:lastcatcode] )
				{
					lastcatcode = catCode;
					
					cat = [MOCategories newInManagedObjectContext:[self managedObjectContext]];
					[cat setName:catCode];
					[cat setMode:[NSNumber numberWithInt:0]];
					[cat setType:[NSNumber numberWithInt:0]];
					[cat setCode:catCode];
				}
				
				// Aggiunge il prezzo alla categoria
				if( cat )
					[cat addPricesObject:price];
			}
			else // Elemento di analisi
			{
				NSString* desc = [fields objectAtIndex:3];
				
				if( [[desc substringToIndex:1] isEqualToString:@"["] ) // Articolo
				{
					NSString* code = [[desc componentsSeparatedByString:@" "] objectAtIndex:0];
					code = [code stringByReplacingOccurrencesOfString:@"[" withString:@""];
					code = [code stringByReplacingOccurrencesOfString:@"]" withString:@""];
					
					// Verifica se il prezzo esiste già
					MOPrices* subprice = [MOPrices findByCode:code context:[self managedObjectContext]];
					
					if( !subprice ) // Nuoro articolo, lo crea
					{
						subprice = [MOPrices newInManagedObjectContext:[self managedObjectContext]];
						[subprice setCode:code];
						[subprice setPrice:[NSDecimalNumber decimalNumberWithString:[fields objectAtIndex:5]]];
						[subprice setBriefDescription:[[desc componentsSeparatedByString:@" - "]objectAtIndex:1]];
						
						// Crea la categoria
						MOCategories* subCat = [MOCategories findByCode:[code substringToIndex:1] context:[self managedObjectContext]];
						
						if( !subCat ) // Crea la categoria
						{
							subCat = [MOCategories newInManagedObjectContext:[self managedObjectContext]];
							
							[subCat setCode:[code substringToIndex:1]];
							[subCat setName:[code substringToIndex:1]];
							[subCat setType:[NSNumber numberWithInt:0]];
						}
						
						if( subCat )
							[subCat addPricesObject:subprice];
					}
					
					// Aggiunge la voce di analisi
					MOAnalisys* an = [MOAnalisys newInManagedObjectContext:[self managedObjectContext]];
					
					[an setReferencePrice:subprice];
					[an setType:[NSNumber numberWithInt:0]];
					[an setQuantity:[NSNumber numberWithDouble:[[fields objectAtIndex:4] doubleValue]]];
					
					[price addAnalisysRowsObject:an];
				}
				else if ( [[desc substringToIndex:6] isEqualToString:@"TOTALE"] ) // Totale
				{
					[price setUmCode:[[desc componentsSeparatedByString:@"/"] objectAtIndex:1]]; // Unità di misura
					
					[price setPrice:[NSDecimalNumber decimalNumberWithString:[fields objectAtIndex:6]]];
				}
			}
			
			rowIndex++;
		}
	}
	else
	{
		[NSApp presentError:error];
	}
	
	[ap release];
	
	[NSApp endSheet:importPanel];
	[importPanel close];
	
	// [self performSelectorOnMainThread:@selector(closeImportPanel) withObject:nil waitUntilDone:NO];
}

// Importazione XPWE di primus
- (void) importXPWEForFilename:(NSString*)filename
{
	NSLog(@"Importazione file XWPE %@",filename);
	
	NSAutoreleasePool* ap = [[NSAutoreleasePool alloc] init];
	
	NSError* error = nil;
	NSURL* url = [NSURL fileURLWithPath:filename];
	
	NSXMLDocument* doc = [[NSXMLDocument alloc] initWithContentsOfURL:url 
															  options:NSXMLDocumentTidyXML 
																error:&error];
	
	if( !error )
	{
		// Processa il file
		
		[progressIndicator startAnimation:self];
		
		NSXMLNode* root = [doc rootElement];
		
		for( NSXMLNode* c1 in [root children] )
		{
			if( [[c1 name] isEqualToString:@"PweMisurazioni"] )
			{
				for( NSXMLNode* c2 in [c1 children] )
				{
					if( [[c2 name] isEqualToString:@"PweElencoPrezzi"] ) // Importazione prezzi
					{
						NSMutableArray* xmlPrices = [NSMutableArray array];
						NSMutableArray* dbPrices = [NSMutableArray array];
						NSMutableArray* dbPricesCode = [NSMutableArray array];
						
						// Memorizza i nodi dei prezzi in un array (per analisi)
						for( NSXMLElement* priceNode in [c2 children] )
						{
							[xmlPrices addObject:priceNode];
						}
						
						// Importa i prezzi nel db
						int n = 1;
						NSString* lastcatcode = @"";
						MOCategories* cat = nil;
						for( NSXMLElement* priceNode in xmlPrices )
						{
							MOPrices* price = [MOPrices newInManagedObjectContext:[self managedObjectContext]];
							
							[price setCode:[[priceNode childAtIndex:1] stringValue]];
							[price setImportCode:[[priceNode attributeForName:@"ID"] stringValue]];
							[price setOrderNumber:[NSNumber numberWithInt:n++]];
							[price setBriefDescription:[[priceNode childAtIndex:3] stringValue]];
							
							NSString* um = [[[priceNode childAtIndex:6] stringValue] lowercaseString];
							if( [um isEqualToString:@"ora"] )
								um = @"h";
							if( [um isEqualToString:@"a corpo"] )
								um = @"corpo";
							[price setUmCode:um];
							
							NSString* longDesc = [[priceNode childAtIndex:4] stringValue];
							// Sistema a capo della descrizione estesa
							longDesc = [longDesc stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n"];
							[price setLongDescription:[[NSAttributedString alloc] initWithString:longDesc]];
							[price setPrice:[NSDecimalNumber decimalNumberWithString:[[priceNode childAtIndex:7] stringValue]]];
							
							// Aggiunge la categoria
							NSString* catCode = [[price code] substringToIndex:1];
							if( ![catCode isEqualToString:lastcatcode] )
							{
								lastcatcode = catCode;
								
								cat = [MOCategories newInManagedObjectContext:[self managedObjectContext]];
								[cat setName:catCode];
								[cat setMode:[NSNumber numberWithInt:0]];
								[cat setType:[NSNumber numberWithInt:0]];
								[cat setCode:catCode];
							}
							
							// Aggiunge il prezzo alla categoria
							
							if( cat )
							{
								[cat addPricesObject:price];
							}
							
							
							[dbPrices addObject:price];
							[dbPricesCode addObject:[price importCode]];
						}
						
						// Prima di importare l'analisi mette la progress bar in modalità determinata
						[progressIndicator setIndeterminate:NO];
						[progressIndicator setMinValue:0];
						[progressIndicator setMaxValue:[xmlPrices count]];
						
						// Importa l'analisi
						NSEntityDescription* entity = [NSEntityDescription entityForName:@"Prices" inManagedObjectContext:[self managedObjectContext]];
						NSFetchRequest* request = [[[NSFetchRequest alloc] init] autorelease];
						[request setEntity:entity];
						int i=0;
						for( NSXMLElement* priceNode in xmlPrices )
						{
							[self performSelectorOnMainThread:@selector(updateProgress:) withObject:[NSNumber numberWithDouble:i] waitUntilDone:NO];
							
							[progressIndicator setDoubleValue:(double)i];
							
							MOPrices* price = [dbPrices objectAtIndex:i++];
							
							NSArray* nodes = [priceNode nodesForXPath:@"./PweEPAnalisi/PweEPAR/EPARItem" error:nil];
							
							// Scorre le righe di analisi se presenti
							int nn=0;
							for( NSXMLElement* artAnalisi in nodes )
							{
								nn++;
								// ID originale 
								NSString* IDEP = [[[artAnalisi children] objectAtIndex:1] stringValue];
								NSString* Type = [[[artAnalisi children] objectAtIndex:0] stringValue];
								
								// NSLog(@"Aggiungi analisi articolo %@",[price code]);
								
								if( [Type isEqualToString:@"0"] ) // Descrizione di analisi (nessun articolo)
								{
									MOAnalisys* an = [MOAnalisys newInManagedObjectContext:[self managedObjectContext]];
									
									[an setQuantity:[NSNumber numberWithInt:0]];
									[an setOrderNumber:[NSNumber numberWithInt:nn]];
									NSString* desc = [[[artAnalisi children] objectAtIndex:2] stringValue];
									if( ![desc isEqualToString:@""] )
										[an setFreeText:desc];
									else
										[an setFreeText:@"-"];
									
									[price addAnalisysRowsObject:an];
								}
								else // Articolo di riferimento
								{
									// Cerca il prezzo nel db
									for( int j=0 ; j<[dbPricesCode count] ; j++ )
									{
										if( [[dbPricesCode objectAtIndex:j] isEqualToString:IDEP] )
										{
											// Aggiunge le righe di analisi
											MOPrices* subPrice = [dbPrices objectAtIndex:j]; // Sub-articolo
											
											MOAnalisys* an = [MOAnalisys newInManagedObjectContext:[self managedObjectContext]];
											
											NSString* q = [[[artAnalisi children] objectAtIndex:4] stringValue];
											[an setQuantity:[NSDecimalNumber decimalNumberWithString:q]];
											[an setReferencePrice:subPrice]; // Articolo di riferimento alla riga
											[an setType:[NSNumber numberWithInt:0]];
											[an setOrderNumber:[NSNumber numberWithInt:nn]];
											
											NSString* desc = [[[artAnalisi children] objectAtIndex:2] stringValue];
											if( ![desc isEqualToString:@""] )
											{
												[an setFreeText:desc];
											}
											
											// Aggiunge l'analisi all'articolo master
											[price addAnalisysRowsObject:an];
											break;
										}
									}
								}
							}
						}
						
						// Ripristina i codici di import
					}
					else if( [[c2 name] isEqualToString:@"PweVociComputo"] ) // Importazione computo
					{
						// Scorre le voci di computo
						for( NSXMLElement* computoItemNode in [c2 children] )
						{
							NSString* priceID = [[computoItemNode childAtIndex:0] stringValue];
							
							MOPrices* price = [MOPrices findByImportCode:priceID context:[self managedObjectContext]];
							
							if( price ) // Prezzo trovato...altrimenti c'è qualche strano problema
							{
								// Verifica siano presenti le misure
								if( [[computoItemNode children] count] > 7 )
								{
									NSXMLNode* vcMisure = [computoItemNode childAtIndex:7];
									
									// Scorre le misure di questa voce
									for( NSXMLElement* misure in [vcMisure children] )
									{
										NSString* partName = [[misure childAtIndex:1] stringValue];
										
										if( [partName isEqualToString:@""] )
											partName = @"Altro";
										
										MOParts* part = nil;
										part = [MOParts findByName:partName context:[self managedObjectContext] useLike:YES];
					
										if( !part ) // La parte non c'è, la crea
										{
											part = [MOParts newInManagedObjectContext:[self managedObjectContext]];
											[part setName:partName];
										}
										
										MOPartRows* partRow = [MOPartRows newInManagedObjectContext:[self managedObjectContext]];
										// Crea la PartRow
										
										[partRow setPart:part]; // Parte di questa voce
										[partRow setPrice:price]; // Assegna il prezzo relativo
										
										// Aggiunge la misura
										NSNumber* q = [NSNumber numberWithDouble:[[[misure childAtIndex:6] stringValue] doubleValue]];
										
										MOMeasures* measure = [MOMeasures newInManagedObjectContext:[self managedObjectContext]];
										[measure setQuantity:q];
										[measure setPartQuantityFormula:[[misure childAtIndex:2] stringValue]];
										[measure setPartRow:partRow];
									}
								}
							}
						}
					}
				}
			}
		}
	}
	else
	{
		[NSApp presentError:error];
	}
	
	[[self managedObjectContext] commitEditing];
	
	[doc release];
	[ap release];
	
	[self performSelectorOnMainThread:@selector(closeImportPanel) withObject:nil waitUntilDone:NO];
}

#pragma mark -
#pragma mark Delegates

#pragma mark Observer

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	[super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
}


#pragma mark Window

// Chisura di tutti i pannelli
- (void) windowWillClose:(NSNotification*)notification
{
	if( pricesPanelController )
		[pricesPanelController close];
}

@end

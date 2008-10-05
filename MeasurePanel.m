//
//  MeasurePanel.m
//  Orion
//
//  Created by Michele Longhi on 21/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "MeasurePanel.h"
#import "MOUMFieldsValues.h"

@implementation MeasurePanel

@synthesize managedObject;


- (void) setManagedObject:(NSManagedObject*)object
{
	[self willChangeValueForKey:@"managedObject"];
	managedObject = object;
	[self didChangeValueForKey:@"managedObject"];
	
	// Analizza l'oggetto e prepara i valori di misura
	
	NSString* umCode = [[self managedObject] valueForKeyPath:@"umCode"];
	NSString* umName = umCode;
	NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
	NSMutableArray* keys = [NSMutableArray array];
	
	um = nil;
	NSArray* ums = [ud valueForKey:@"um"];
	for( NSDictionary* m in ums )
	{
		if( [umCode isEqualToString:[m valueForKey:@"key"]] )
		{
			um = m;
			umName = [m valueForKey:@"name"];
			
			// legge l'elenco dei valori richiesti dalla formula
			
			break;
		}
	}
	
	if( [keys count] > 1 ) // Ottiene l'elenco di misure necessarie
	{
	}
	else if ( [keys count] == 1 ) // Misura singola
	{
	}
	else // Mancante (default su singola
	{
		[keys addObject:umName];
	}
	
	for( NSString* key in keys )
	{
		BOOL found = NO;

		for( MOUMFieldsValues* fv in [umArrayController arrangedObjects] )
		{
			if( [[fv key] isEqualToString:key] )
			{
				found = YES;
				break;
			}
		}
		
		if( !found ) // Aggiunge il record nelle misure
		{
			MOUMFieldsValues* fv = [MOUMFieldsValues newInManagedObjectContext:[managedObject managedObjectContext]];
			
			[fv setKey:key];
			
			// Aggiunge il valore alla relazione dell'oggetto
			NSMutableSet* umFieldsValues = [[self managedObject] valueForKeyPath:@"umFieldsValues"];
			[umFieldsValues addObject:fv];
			
			[umArrayController addObject:fv];
		}
	}
	
	
	
	[umTableView reloadData];
	
	// Aggiorna i titolo
	[self willChangeValueForKey:@"umName"];
	[self didChangeValueForKey:@"umName"];
	[self willChangeValueForKey:@"umDescription"];
	[self didChangeValueForKey:@"umDescription"];
	
	// Posiziona il fuoco sulla tabella
	[[self window] makeFirstResponder:umTableView];
}

- (IBAction) closeMeasureEditor:(id)sender
{
	[NSApp endSheet:[self window]];
	[[self window] close];
}

- (NSString*) umName
{
	if( um )
		return [um valueForKey:@"name"];
	
	return @"";
}

- (NSString*) umDescription
{
	if( um )
		return [um valueForKey:@"description"];
	
	return @"";
}


@end

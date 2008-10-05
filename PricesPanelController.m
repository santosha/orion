//
//  PricesPanelController.m
//  Orion
//
//  Created by Michele Longhi on 16/06/08.
//  Copyright 2008 Michele Longhi Digital Studio. All rights reserved.
//

#import "PricesPanelController.h"
#import "AppController.h"

#import "MOPrices.h"

@implementation PricesPanelController

@synthesize managedObjectContext;

#pragma mark -
#pragma mark Initializers

- (id) init
{
	if( [super init] )
	{
		originalContext = nil;
	}
	
	return self;
}

- (void) awakeFromNib
{
	NSArray* sortDescriptors = [NSArray arrayWithObject:[[[NSSortDescriptor alloc] initWithKey:@"code" ascending:YES] autorelease]];
	[tableView setSortDescriptors:sortDescriptors];
	
	[arrayController addObserver:self forKeyPath:@"selection" options:NSKeyValueObservingOptionNew context:arrayController];
}

#pragma mark -
#pragma mark Accessors

- (void) setManagedObjectContext:(NSManagedObjectContext*)context
{
	if( !originalContext )
	{
		originalContext = context;
	}
	
	[self willChangeValueForKey:@"managedObjectContext"];
	
	if( managedObjectContext != context )
	{
		if( managedObjectContext != originalContext )
			[managedObjectContext release];
		
		[context retain];
	}
	managedObjectContext = context;
	[self didChangeValueForKey:@"managedObjectContext"];

	[self willChangeValueForKey:@"storeName"];
	[self didChangeValueForKey:@"storeName"];
}

- (NSString*) categoryPath
{
	NSString* path = @"";
	
	if( [[arrayController selectedObjects] count] > 0 )
	{
		MOPrices* price = [[arrayController selectedObjects] objectAtIndex:0];
		
		MOCategories* cat = [price category];
		while ( cat ) 
		{
			NSString* subpath = [@"/" stringByAppendingString:[cat name]];
			path = [path stringByAppendingString:subpath];
			
			cat = (MOCategories*)[cat parent];
		}
		
		return path;
	}
				 
	return nil;
}

- (NSString*) storeName
{
	/*
	if( [self managedObjectContext] == originalContext )
		return @"Attuale";
	else
	{
	 */
		NSURL* url = [AppController storeURLFromManagedObjectContext:[self managedObjectContext]];
		NSString* absString = [url absoluteString];
		NSString* filename = [absString lastPathComponent];
		filename = [filename stringByReplacingOccurrencesOfString:@".OrionPricesXML" withString:@""];
		filename = [filename stringByReplacingOccurrencesOfString:@".OrionProjectXML" withString:@""];
		filename = [filename stringByReplacingOccurrencesOfString:@".OrionPrices" withString:@""];
		filename = [filename stringByReplacingOccurrencesOfString:@".OrionProject" withString:@""];
		filename = [filename stringByReplacingOccurrencesOfString:@"%20" withString:@" "];
		
		return filename;
	//}
}

#pragma mark -
#pragma mark Delegates

#pragma mark Observer

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == arrayController) 
	{
		if( [ keyPath isEqualToString:@"selection"] )
		{
			[self willChangeValueForKey:@"categoryPath"];
			[self didChangeValueForKey:@"categoryPath"];
		}
	}
	else 
	{
		[super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
	}
}


#pragma mark TableView

- (BOOL) tableView:(NSTableView *)tv writeRowsWithIndexes:(NSIndexSet *)rowIndexes toPasteboard:(NSPasteboard*)pboard 
{ 
	// Crea l'indice del drop
	NSMutableArray* array = [NSMutableArray array];
	
    unsigned count = [[arrayController arrangedObjects] count];
	
    unsigned index = [rowIndexes firstIndex];
    while ( index != NSNotFound )
    {
        if ( index < count )
            [array addObject: [[arrayController arrangedObjects] objectAtIndex: index]];
		
        index = [rowIndexes indexGreaterThanIndex: index];
    }
		
	// Memorizza gli uri degli oggetti nella pasteboard
	[MOPrices copyArray:array toPasteboard:pboard];
	
	return YES; 
} 

#pragma mark -
#pragma mark Actions

- (void)openPanelDidEnd:(NSOpenPanel *)panel returnCode:(int)returnCode  contextInfo:(void  *)contextInfo
{
	if( [(NSString*)contextInfo isEqualToString:@"STORE"] && returnCode == NSOKButton )
	{
		NSURL* url = [NSURL fileURLWithPath:[panel filename]];
		
		NSError *error;
		
		NSManagedObjectModel* managedObjectModel = [[NSManagedObjectModel mergedModelFromBundles:nil] retain];  
		NSPersistentStoreCoordinator* persistentStoreCoordinator = [[[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:managedObjectModel] autorelease];
		
		if (![persistentStoreCoordinator addPersistentStoreWithType:[AppController storeTypeFromFilename:[panel filename]]
													  configuration:nil 
																URL:url 
															options:nil
															  error:&error])
		{
			[[NSApplication sharedApplication] presentError:error];
			return;
		}
		
		NSManagedObjectContext* context = [[[NSManagedObjectContext alloc] init] autorelease];
		[context setPersistentStoreCoordinator:persistentStoreCoordinator];
		
		[self setManagedObjectContext:context];
	}
}

- (IBAction) changeStore:(id)sender
{
	NSOpenPanel* openPanel = [NSOpenPanel openPanel];

	[openPanel setAllowsMultipleSelection:NO];
	
	[openPanel beginSheetForDirectory:nil 
								 file:nil 
								types:[NSArray arrayWithObjects:@"OrionProject",@"OrionPrices",@"OrionProjectXML",@"OrionPricesXML",nil]
					   modalForWindow:[self window] 
						modalDelegate:self
					   didEndSelector:@selector(openPanelDidEnd:returnCode:contextInfo:)
						  contextInfo:@"STORE"];
}

- (IBAction) resetStore:(id)sender
{
	[self setManagedObjectContext:originalContext];
}


@end

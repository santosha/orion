#import <Cocoa/Cocoa.h>

@interface PlaylistCell : NSTextFieldCell 
{
@private
    NSImage *image;
	NSString* code;
	BOOL isChild;
}

@property (assign,readwrite) NSString* code;
@property BOOL isChild;

- (void)setImage:(NSImage *)anImage;
- (NSImage *)image;

- (void)drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView;
- (NSSize)cellSize;

@end

//
//  AlbumDataController.m
//  ObjectiveCtraining
//
//  Created by Moon on 2016. 3. 16..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import "AlbumDataController.h"
#import "Album.h"

// private interface
@interface AlbumDataController ()
@property (nonatomic, readonly) NSMutableArray *albumList;

-(void) initializeDefaultAlbums;
@end

@implementation AlbumDataController

-(id)init {
    self = [super init];
    
    if(self) {
        _albumList = [[NSMutableArray alloc] init];
        [self initializeDefaultAlbums];
        return self;
    }
    return nil;
}

- (void)initializeDefaultAlbums{
    [self addAlbumWithTitle:@"Infected Splinter" artist:@"Boppin" summary:@"awesome album with a hint of Oak." price:9.99f locationInStore:@"section F"];
}

- (void)addAlbumWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString *)locationInStore{
    Album *newAlbum = [[Album alloc] initWithTitle:title artist:artist summary:summary price:price locationInStore:locationInStore];
    
    [self.albumList addObject:newAlbum];
}

- (NSUInteger)albumCount {
    return [self.albumList count];
}

- (Album *)albumAtIndex:(NSUInteger)index {
    return [self.albumList objectAtIndex:index];
}

@end

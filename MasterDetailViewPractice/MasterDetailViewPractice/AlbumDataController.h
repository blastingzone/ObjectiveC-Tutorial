//
//  AlbumDataController.h
//  ObjectiveCtraining
//
//  Created by Moon on 2016. 3. 16..
//  Copyright © 2016년 Moon. All rights reserved.
//

@class Album; // forward declare

#import <Foundation/Foundation.h>

@interface AlbumDataController : NSObject

-(NSUInteger)albumCount;

-(Album *)albumAtIndex:(NSUInteger)index;

-(void)addAlbumWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString *)locationInStore;

@end

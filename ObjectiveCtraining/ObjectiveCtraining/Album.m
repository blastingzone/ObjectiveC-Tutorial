//
//  Album.m
//  ObjectiveCtraining
//
//  Created by Moon on 2016. 3. 14..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import "Album.h"

@implementation Album

-(id)initWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString *)locationInStore{
    self = [super init];
    if (self){
        _title = title;
        _artist = artist;
        _summary = summary;
        _price = price;
        _locationInStore = locationInStore;
        
        return self;
    }
    
    return nil;
}

@end

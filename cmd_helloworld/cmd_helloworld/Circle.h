//
//  Circle.h
//  cmd_helloworld
//
//  Created by Moon on 2016. 4. 22..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import "Shape.h"

@class XYPoint;

@interface Circle : Shape

@property double r;
@property SEL setSel;

-(void) setRadius: (double) r;
-(void) setOrigin: (XYPoint*) pt;
-(XYPoint*) origin;
@end

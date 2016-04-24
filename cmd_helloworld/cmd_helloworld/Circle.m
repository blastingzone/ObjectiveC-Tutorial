//
//  Circle.m
//  cmd_helloworld
//
//  Created by Moon on 2016. 4. 22..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import "Circle.h"

@implementation Circle
{
    XYPoint *origin;
}
-(void) setRadius: (double) r
{
    self.r = r;
}
-(void) setOrigin:(XYPoint *)pt
{
    origin = pt;
}
-(XYPoint*) origin
{
    return origin;
}
// override
-(double) getArea
{
    return self.r * self.r * 3.14;
}
@end

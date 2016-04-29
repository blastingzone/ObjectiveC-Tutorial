//
//  Shape.m
//  cmd_helloworld
//
//  Created by Moon on 2016. 4. 22..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import "Shape.h"

@implementation Shape
{
    enum direction DIR;
}
-(double) getArea
{
    return -1;
}
-(void) printDirection
{
    DIR = 10;
    switch(DIR)
    {
        case up:
            NSLog(@"enum up : %d", DIR);
            break;
        case down:
            NSLog(@"enum down : %d", DIR);
            break;
        case left:
            NSLog(@"enum left : %d", DIR);
            break;
        case right:
            NSLog(@"enum right : %d", DIR);
            break;
        default:
            break;
    }
}
@end

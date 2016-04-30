//
//  main.m
//  cmd_helloworld
//
//  Created by Moon on 2016. 4. 12..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Circle.h"
#import "XYPoint.h"

float gGlobalMainVal = 10.f;

typedef Circle* Circle_ptr;
typedef unsigned int Counter;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Circle_ptr circleInst = [[Circle alloc] init];
        
        [circleInst setRadius:3.0];
        NSLog(@"%f", [circleInst getArea]);
        
        circleInst.name = @"Circle Instance";
        NSLog(@"circle name = %@", circleInst.name);
        
        //XYPoint origin
        XYPoint* originPt = [[XYPoint alloc] init];
        [originPt setX:10 andY:20];
        [circleInst setOrigin:originPt];
        NSLog(@"X : %d, Y : %d",circleInst.origin.x, circleInst.origin.y);
        
        [circleInst setAreaToGlobalValue];
        
        NSLog(@"Extern Global Value is : %f", gGlobalMainVal);
        
        [circleInst printDirection];
        
        Counter c;
        c = 0;
        while(c < 10)
        {
            c++;
        }
        NSLog(@"c : %d", c);
    }
    return 0;
}

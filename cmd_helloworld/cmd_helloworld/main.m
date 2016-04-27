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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Circle* circleInst = [[Circle alloc] init];
        
        [circleInst setRadius:3.0];
        NSLog(@"%f", [circleInst getArea]);
        
        circleInst.name = @"Circle Instance";
        NSLog(@"circle name = %@", circleInst.name);
        
        //XYPoint origin
        XYPoint* originPt = [[XYPoint alloc] init];
        [originPt setX:10 andY:20];
        [circleInst setOrigin:originPt];
        NSLog(@"X : %d, Y : %d",circleInst.origin.x, circleInst.origin.y);
        
        id dataValue;
        dataValue = circleInst;
        if([dataValue isKindOfClass: [circleInst class]]){
            NSLog(@"Yes, isKindOfClass Circle");
            NSLog(@"%f",[dataValue getArea]);
        } else {
            NSLog(@"No, it's not Circle");
        }
        
        if([dataValue isMemberOfClass:[circleInst class]] == YES){
            NSLog(@"Yes, isMemberOfClass Circle");
        }
        
        if([dataValue respondsToSelector: circleInst.setSel] == YES){
            NSLog(@"Yes, respondsToSelector Circle.setSel");
        }
    }
    return 0;
}

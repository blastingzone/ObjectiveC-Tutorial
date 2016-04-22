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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Circle* circleInst = [[Circle alloc] init];
        
        [circleInst setRadius:3.0];
        NSLog(@"%f", [circleInst getArea]);
    }
    return 0;
}

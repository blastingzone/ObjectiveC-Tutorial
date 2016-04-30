//
//  Shape.h
//  cmd_helloworld
//
//  Created by Moon on 2016. 4. 22..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject
@property NSString *name;

enum direction : unsigned short int {up, down, left = 10, right};

-(double) getArea;
-(void) printDirection;
@end

//
//  Fraction.h
//  cmd_helloworld
//
//  Created by Moon on 2016. 4. 16..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import <Foundation/Foundation.h>

//--- @interface secion

@interface Fraction : NSObject

@property int numerator, denominator;

+(int) getAbsInt: (int) val;
-(void) print;
-(void) setTo: (int) n over: (int) d;
-(int) increaseCommonCounter;

@end
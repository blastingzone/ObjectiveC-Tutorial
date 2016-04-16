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

+(int) getAbsInt: (int) val;
-(void) print;
-(void) setNumber: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

@end
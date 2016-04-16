//
//  Fraction.m
//  cmd_helloworld
//
//  Created by Moon on 2016. 4. 16..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import "Fraction.h"

//--- @interface secion

@implementation Fraction
{
    int numerator;
    int denominator;
}
+(int) getAbsInt:(int)val{
    if(val < 0) {
        val *= -1;
    }
    
    return val;
}
-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}
-(void) setNumber:(int)n
{
    numerator = n;
}
-(void) setDenominator:(int)d
{
    denominator = d;
}
-(int) numerator
{
    return numerator;
}
-(int) denominator
{
    return denominator;
}
@end
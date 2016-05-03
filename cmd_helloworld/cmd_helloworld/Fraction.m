//
//  Fraction.m
//  cmd_helloworld
//
//  Created by Moon on 2016. 4. 16..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import "Fraction.h"

static int staticCounter;
//--- @interface secion

@implementation Fraction
{
    
}
// class method
+(int) getAbsInt:(int)val{
    if(val < 0) {
        val *= -1;
    }
    
    return val;
}
-(void) print
{
    NSLog(@"%i/%i", self.numerator, self.denominator);
}
-(void) setTo:(int)n over:(int)d
{
    _numerator = n;
    _denominator = d;
}
-(int) increaseCommonCounter
{
    extern int staticCounter;
    
    staticCounter++;
    
    return staticCounter;
}
-(int) getCommonCounter
{
    extern int staticCounter;
    
    return staticCounter;
}
// class extension
-(void) reduce
{
    int u = _numerator;
    int v = _denominator;
    int temp;
    while (v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    _numerator /= u;
    _denominator /= u;
}
@end
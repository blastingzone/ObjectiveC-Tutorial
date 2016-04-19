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
-(void) add: (Fraction*) f
{
    // add two fractions
    self.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    self.denominator = self.denominator * f.denominator;
}
@end
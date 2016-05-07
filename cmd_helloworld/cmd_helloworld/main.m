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

// preprocessor-hack
#define AND &&
#define OR ||
#define EQUAL ==


// class category
@interface Fraction (MathOps)
-(void) add: (Fraction *) f;
@end

@implementation Fraction (MathOps)
-(void) add: (Fraction*) f
{
    // add two fractions
    self.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    self.denominator = self.denominator * f.denominator;
}
@end

// class extension
@interface Fraction ()
-(void) reduce;
@end

float gGlobalMainVal = 10.f;

typedef Circle* Circle_ptr;
typedef Fraction* Frac_ptr;
typedef unsigned int Counter;


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        // integer value
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog (@"%li", (long) myInt);
        
        // long value
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog (@"%lx", [myNumber longValue]);
        
        // char value
        myNumber = [NSNumber numberWithChar: 'X'];
        NSLog (@"%c", [myNumber charValue]);
        NSLog (@"%d", [myNumber charValue]);
        
        // float value
        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog (@"%g", [floatNumber floatValue]);
        
        // double
        myNumber = [NSNumber numberWithDouble: 12345e+15];
        NSLog (@"%lg", [myNumber doubleValue]);
        
        // Wrong access here
        NSLog (@"%li", (long) [myNumber integerValue]);
        
        // Test two Numbers for equality
        if ([intNumber isEqualToNumber: floatNumber] == YES)
            NSLog (@"Numbers are equal");
        else
            NSLog (@"Numbers are not equal");
        
        // Test if one Number is <, ==, or > second Number
        if ([intNumber compare: myNumber] == NSOrderedAscending)
            NSLog (@"First number is less than second");
    }
    return 0;
}



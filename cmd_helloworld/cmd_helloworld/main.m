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


void (^helloWorld) (NSString*, NSString*) =
^(NSString *name, NSString* location){
    NSLog(@"Hello World, %@ from %@", name, location);
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        helloWorld(@"Frodo", @"Shire");
    }
    return 0;
}



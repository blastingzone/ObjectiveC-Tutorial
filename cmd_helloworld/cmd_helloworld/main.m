//
//  main.m
//  cmd_helloworld
//
//  Created by Moon on 2016. 4. 12..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import <Foundation/Foundation.h>

//--- @interface secion

@interface Fraction : NSObject

+(int) getAbsInt: (int) val;
-(void) print;
-(void) setNumber: (int) n;
-(void) setDenominator: (int) d;

@end

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



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fracInstance;
        
        fracInstance = [[Fraction alloc] init];
        
        [fracInstance setNumber: [Fraction getAbsInt:-2]];
        [fracInstance setDenominator:3];
        
        NSLog(@"The valud of fracInstance is:");
        [fracInstance print];
        
        NSLog(@"Getter test numerator : %i", [fracInstance numerator]);
        NSLog(@"Getter test denominator : %i", [fracInstance denominator]);
    }
    return 0;
}

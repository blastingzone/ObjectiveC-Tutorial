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
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fracInstance;
        
        fracInstance = [[Fraction alloc] init];
        
        [fracInstance setNumber:1];
        [fracInstance setDenominator:3];
        
        NSLog(@"The valud of fracInstance is:");
        [fracInstance print];
    }
    return 0;
}

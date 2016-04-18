//
//  main.m
//  cmd_helloworld
//
//  Created by Moon on 2016. 4. 12..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fracInstance;
        
        fracInstance = [[Fraction alloc] init];
        
        fracInstance.numerator = [Fraction getAbsInt:-2];
        fracInstance.denominator = 3;
        
        NSLog(@"The valud of fracInstance is:");
        [fracInstance print];
        
        NSLog(@"Getter test numerator : %i", fracInstance.numerator);
        NSLog(@"Getter test denominator : %i", fracInstance.denominator);
        
        NSLog(@" === 2 Parameter Test === ");
        int numerator, denominator;
        NSLog(@" Input First : ");
        scanf("%i", &numerator);
        NSLog(@" Input Second : ");
        scanf("%i", &denominator);
        
        [fracInstance setTo:numerator over:denominator];
        NSLog(@"The valud of fracInstance is:");
        [fracInstance print];
    }
    return 0;
}

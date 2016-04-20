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
        
        [fracInstance add:fracInstance];
        [fracInstance print];
        
        for(int i = 0; i < 10; ++i)
        {
            NSLog(@"count : %i", [fracInstance increaseCommonCounter]);
        }
        
        Fraction *anotherFracInstance = [[Fraction alloc] init];
        
        NSLog(@"count : %i", [anotherFracInstance increaseCommonCounter]);
    }
    return 0;
}

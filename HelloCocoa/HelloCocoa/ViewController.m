//
//  ViewController.m
//  HelloCocoa
//
//  Created by MoonJS on 2016. 2. 12..
//  Copyright © 2016년 GoldMoon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert:(id)sender {
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Hello!"
                                                    message:@"Hello, World!"
                                                   delegate:nil
                                          cancelButtonTitle:@"Close"
                                          otherButtonTitles:nil];
    [alert show];
    
    [self.helloBtn setTitle:@"Click" forState:UIControlStateNormal];
}
@end

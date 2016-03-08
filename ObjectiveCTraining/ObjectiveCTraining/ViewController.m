//
//  ViewController.m
//  ObjectiveCtraining
//
//  Created by Moon on 2016. 3. 3..
//  Copyright © 2016년 Moon. All rights reserved.
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

- (IBAction)EmptyTextView:(id)sender {
    NSLog(@"Empty Text Button Touched");
    _TextViewer.text = @"";
    [_emptyTextViewerButton setEnabled:false];
}
@end

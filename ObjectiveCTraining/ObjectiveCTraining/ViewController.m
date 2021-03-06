//
//  ViewController.m
//  ObjectiveCtraining
//
//  Created by Moon on 2016. 3. 3..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import "ViewController.h"
#import "Social/Social.h"
#import "Album.h"
#import "AlbumDataController.h"

@interface ViewController ()
 @property (nonatomic, strong) AlbumDataController *albumDataController;
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

- (IBAction)TweetMessage:(id)sender {
    SLComposeViewController *composer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    
    NSString *tweetMsg = [NSString stringWithFormat:@"%@#HashTag", self.TextViewer.text];
    
    [composer setInitialText:tweetMsg];
    [self presentViewController:composer
                       animated:YES completion:nil];
    
}

- (IBAction)FacebookMessage:(id)sender {
    SLComposeViewController *composer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    
    [composer setInitialText:self.TextViewer.text];
    [self presentViewController:composer
                       animated:YES completion:nil];
}
@end

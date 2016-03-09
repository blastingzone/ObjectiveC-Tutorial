//
//  ViewController.h
//  ObjectiveCtraining
//
//  Created by Moon on 2016. 3. 3..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *TextViewer;
@property (weak, nonatomic) IBOutlet UIButton *emptyTextViewerButton;

- (IBAction)EmptyTextView:(id)sender;

- (IBAction)TweetMessage:(id)sender;

@end


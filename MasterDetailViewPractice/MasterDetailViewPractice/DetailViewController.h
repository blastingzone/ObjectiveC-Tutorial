//
//  DetailViewController.h
//  MasterDetailViewPractice
//
//  Created by Moon on 2016. 3. 24..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end


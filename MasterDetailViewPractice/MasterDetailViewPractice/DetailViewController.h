//
//  DetailViewController.h
//  MasterDetailViewPractice
//
//  Created by Moon on 2016. 3. 24..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Album;

@interface DetailViewController : UITableViewController

@property (strong, nonatomic) Album *detailItem;

@end


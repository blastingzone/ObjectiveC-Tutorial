//
//  AlbumTableViewCell.h
//  MasterDetailViewPractice
//
//  Created by MoonJS on 2016. 3. 28..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlbumTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *albumTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *albumSummaryLabel;
@property (weak, nonatomic) IBOutlet UILabel *albumPriceLabel;

@end

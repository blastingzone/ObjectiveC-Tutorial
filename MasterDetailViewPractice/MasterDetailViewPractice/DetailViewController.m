//
//  DetailViewController.m
//  MasterDetailViewPractice
//
//  Created by Moon on 2016. 3. 24..
//  Copyright © 2016년 Moon. All rights reserved.
//

#import "DetailViewController.h"
#import "Album.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    if (self.detailItem){
        self.albumTitleLabel.text = [self.detailItem valueForKey:@"title"];
        self.priceLabel.text = [NSString stringWithFormat:@"$%01.2f", [[self.detailItem valueForKey:@"price"] floatValue]];
        self.artistLabel.text = [self.detailItem valueForKey:@"artist"];
        self.locationLabel.text = [self.detailItem valueForKey:@"locationInStore"];
        self.descriptionTextView.text = [self.detailItem valueForKey:@"summary"];
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

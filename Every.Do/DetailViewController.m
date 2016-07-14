//
//  DetailViewController.m
//  Every.Do
//
//  Created by JOSE PILAPIL on 2016-07-12.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import "DetailViewController.h"

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
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [NSString stringWithFormat:@"Title: %@\nDescription: %@\n Prioritynumber: %d \n",self.detailItem.name ,self.detailItem.toDoDescription, self.detailItem.priorityNumber];
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

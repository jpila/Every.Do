//
//  DetailViewController.h
//  Every.Do
//
//  Created by JOSE PILAPIL on 2016-07-12.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"


@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDo *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end


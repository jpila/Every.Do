//
//  toDoViewCell.h
//  Every.Do
//
//  Created by JOSE PILAPIL on 2016-07-12.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"


@interface toDoViewCell : UITableViewCell 

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityNumberLabel;

@end

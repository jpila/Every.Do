//
//  TodoInputViewController.h
//  Every.Do
//
//  Created by JOSE PILAPIL on 2016-07-13.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoViewCell.h"
@class AddTodoViewController;
@class ToDo;

@protocol AddTodoViewControllerDelegate

- (void)didSaveNewTodo:(ToDo*)todo;

@end


@interface TodoInputViewController :UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) id <AddTodoViewControllerDelegate> delegate;


@end

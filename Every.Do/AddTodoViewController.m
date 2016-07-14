//
//  TodoInputViewController.m
//  Every.Do
//
//  Created by JOSE PILAPIL on 2016-07-13.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import "AddTodoViewController.h"
#import "ToDo.h"
#import "MasterViewController.h"



@interface TodoInputViewController ()
@property (weak, nonatomic) IBOutlet UITextField *todoTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *priorityNumTextField;

- (IBAction)cancel:(id)sender;

- (IBAction)save:(id)sender;


@end

@implementation TodoInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:
     nil];
    
    
}

- (IBAction)save:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate didSaveNewTodo:[[ToDo alloc]initWithName:self.todoTextField.text description:self.descriptionTextField.text priorityNumber:self.priorityNumTextField.text.intValue]];
    
}


@end

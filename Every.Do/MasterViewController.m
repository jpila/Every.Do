//
//  MasterViewController.m
//  Every.Do
//
//  Created by JOSE PILAPIL on 2016-07-12.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "ToDo.h"
#import "ToDoViewCell.h"
#import "AddTodoViewController.h"

@interface MasterViewController () <AddTodoViewControllerDelegate>

@property (nonatomic) NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ToDo *lightHouseAssignment1 = [[ToDo alloc]initWithName:@"2Player-Math" description:@"2Player Math Game in Objective C" priorityNumber:1];
    ToDo *lighthouseAssignment2 = [[ToDo alloc]initWithName:@"My own Scrollview" description:@"Programmatically Create scrollview using UIView" priorityNumber:2];
    ToDo *lighthouseAssignment3 = [[ToDo alloc]initWithName:@"Finger-Paint app" description:@"paint with a UIBezierPath" priorityNumber:3];
    
    self.objects = [NSMutableArray array];
    [self.objects addObject:lightHouseAssignment1];
    [self.objects addObject:lighthouseAssignment2];
    [self.objects addObject:lighthouseAssignment3];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(newToDoInputViewController:)];
    self.navigationItem.rightBarButtonItem = addButton;
}

- (void)viewWillAppear:(BOOL)animated {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)newToDoInputViewController:(id)sender {
    
    TodoInputViewController *todoViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"TodoInputViewController"];
    [self presentViewController:todoViewController animated:YES completion:nil];
    todoViewController.delegate = self ;
    
}
#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ToDo *object = self.objects[indexPath.row];
        DetailViewController *controller = (DetailViewController *)[segue destinationViewController];
        [controller setDetailItem:object];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"section: %ld, row: %ld", (long)indexPath.section, (long)indexPath.row);
    ToDoViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    ToDo *todos = self.objects[indexPath.row];
    
    NSString *name = todos.name;
    NSString *toDoDescription = todos.toDoDescription;
    NSString *priorityNumber = [NSString stringWithFormat:@"%i", todos.priorityNumber];
    
    cell.titleLabel.text = name;
    cell.subtitleLabel.text = toDoDescription;
    cell.priorityNumberLabel.text = priorityNumber;
    
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

#pragma mark - delegate method
-(void)didSaveNewTodo:(ToDo *)todo {
    [self.objects addObject:todo];
    [self.tableView reloadData];
}

@end

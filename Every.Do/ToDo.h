//
//  ToDo.h
//  Every.Do
//
//  Created by JOSE PILAPIL on 2016-07-12.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject


@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *toDoDescription;

@property (nonatomic) int priorityNumber;

@property (nonatomic) BOOL *isCompeted;


-(instancetype)initWithName:(NSString*)name description:(NSString*)descriptionStr priorityNumber:(int)priorityNum;


@end

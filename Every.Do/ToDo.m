//
//  ToDo.m
//  Every.Do
//
//  Created by JOSE PILAPIL on 2016-07-12.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo



-(instancetype)initWithName:(NSString*)name description:(NSString*)descriptionStr priorityNumber:(int)priorityNum{if (self = [super init]){
    self.name =name;
    self.toDoDescription = descriptionStr;
    self.priorityNumber = priorityNum;

}return self;
}

@end

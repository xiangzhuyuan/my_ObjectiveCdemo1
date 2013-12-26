//
//  Manager.h
//  xiangzhuyuan_demo_with_type_foundation
//
//  Created by xiangzhuyuan on 13-12-27.
//  Copyright (c) 2013年 xiangzhuyuan.com. All rights reserved.
//

#import "Employee.h"

@interface Manager : Employee
{
    
    NSMutableArray *reports;
}
@property (nonatomic , retain) NSMutableArray * reports;
-(void)addReport:(Employee *)inEmployee;
@end

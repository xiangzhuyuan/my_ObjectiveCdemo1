//
//  Manager.m
//  xiangzhuyuan_demo_with_type_foundation
//
//  Created by xiangzhuyuan on 13-12-27.
//  Copyright (c) 2013年 xiangzhuyuan.com. All rights reserved.
//

#import "Manager.h"

@implementation Manager
@synthesize reports;


-(void)dealloc
{
    for(Employee *employee in reports)
    {
        [employee setManager:nil];
        
    }
    [self setReports:nil];
    //[super dealloc];
    
}
-(id)init
{
    if (self = [super init]) {
        [self setReports:[NSMutableArray array]];
    }
    return self;
}
-(void)addReport:(Employee *)inEmployee
{
    [reports addObject:inEmployee];
    [inEmployee setManager:self];
}
-(double)bonus
{
    return self.salary * .10;
}
@end

//
//  main.m
//  xiangzhuyuan_demo_with_type_foundation
//
//  Created by xiangzhuyuan on 13-12-26.
//  Copyright (c) 2013年 xiangzhuyuan.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Manager.h"
int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        Employee *xiang =[
                          [Employee   alloc]
                          initWithFirstName:@"xiang"
                          lastName:@"zhuyuan"
                          birthDate:[NSDate dateWithNaturalLanguageString:@"12/01/1985"] ssn:@"111-222-333-xxxx"
                          ];
        Employee *xiang1 =[
                           [Employee   alloc]
                           initWithFirstName:@"xiang1"
                           lastName:@"zhuyuan1"
                           birthDate:[NSDate dateWithNaturalLanguageString:@"12/01/1986"] ssn:@"111-222-333-yyyy"
                           ];
        Manager *wang =[
                        [Manager   alloc]
                        initWithFirstName:@"wang"
                        lastName:@"zhuyuan"
                        birthDate:[NSDate dateWithNaturalLanguageString:@"12/01/1975"] ssn:@"111-222-333-zzzz"
                        ];
        
        [wang addReport:xiang];
        [wang addReport:xiang1];
        xiang.salary=10000;
        xiang1.salary=15000;
        wang.salary=20000;
        
        NSMutableArray *all = [NSMutableArray array];
        [all addObject:xiang];
        [all addObject:xiang1];
        [all addObject:wang];
        
        for (Employee *em in all) {
            [ em giveRaise:.10];
            NSLog(@"Employee %@ %@'s salary is:%.2f with a bonus of: %.2f", em.firstName, em.lastName, em.salary, em.bonus);
        }
        
    }
    return 0;
}


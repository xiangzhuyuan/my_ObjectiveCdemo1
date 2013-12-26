//
//  Employee.m
//  xiangzhuyuan_demo_with_type_foundation
//
//  Created by xiangzhuyuan on 13-12-26.
//  Copyright (c) 2013年 xiangzhuyuan.com. All rights reserved.
//

#import "Employee.h"

@implementation Employee
@synthesize firstName;
@synthesize lastName;
@synthesize birthDate;
@synthesize dateOfEmployment;
@synthesize manager;
@synthesize ssn;
@synthesize salary;
@dynamic age;

-(void)dealloc
{
    [self setFirstName:nil];
    [self setLastName:nil];
    [self setBirthDate:nil];
    [self setDateOfEmployment:nil];
    [self setSsn:nil];
    [self setManager:nil];
    //[super dealloc];
    
}

-(id)init
{
    if (self =[super init]) {
        
    }
    return self;
}
-(id)initWithFirstName:(NSString *)inFirstName lastName:(NSString *)inLastName birthDate:(NSDate *)inBirthDate ssn:(NSString *)inSsn
{
    if (self =[super init]) {
        [self setFirstName:inFirstName];
        [self setLastName:inLastName];
        [self setBirthDate:inBirthDate];
        [self setSsn:inSsn];
        
    }
    return self;
    
    
    
}
-(NSTimeInterval)age
{
    return [birthDate timeIntervalSinceNow];
}


-(double)bonus
{
    return salary * .05;
    
}

-(void)giveRaise:(double)percentage
{
    salary = salary + salary * percentage;
}




@end

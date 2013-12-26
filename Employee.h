//
//  Employee.h
//  xiangzhuyuan_demo_with_type_foundation
//
//  Created by xiangzhuyuan on 13-12-26.
//  Copyright (c) 2013年 xiangzhuyuan.com. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>


@interface Employee : NSObject
{
    NSString *firstName;
    NSString *lastName;
    NSDate *birthDate;
    NSDate *dateOfEmployment;
    __unsafe_unretained Employee *manager;
    NSString *ssn;
}
@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSDate * birthDate;
@property (nonatomic, retain) NSDate * dateOfEmployment;
@property (nonatomic, assign) Employee * manager;
@property (nonatomic, retain) NSString * ssn;
@property (nonatomic, readonly) NSTimeInterval age;
@property (nonatomic) double salary;

-(id)initWithFirstName:(NSString *) inFirstName
              lastName:(NSString *) inLastName
             birthDate:(NSDate *) inBirthDate
                   ssn:(NSString *) inSsn;
-(void)giveRaise:(double) percentage;
-(double)bonus;
@end

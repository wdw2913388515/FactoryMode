//
//  PersonFactory.m
//  工厂模式
//
//  Created by 伟大的大伟😘 on 2019/1/13.
//  Copyright © 2019 伟大的大伟😘. All rights reserved.
//

#import "PersonFactory.h"
#import "Student.h"
#import "Police.h"
@implementation PersonFactory
+(Person *)personWithTask:(NSString *)task {
    
    
    Person *person = nil;
    if ([task isEqualToString:@"ReadBook"]) {
        person = [Student person];
        person.name = @"xiaoming";
        person.age  = 20;
        
        [person setWorkBlock:^(Person * _Nonnull person) {
            Student *temp = (Student *)person;
            [temp readBookWtihName:@"ios"];
        }];
    }else if ([task isEqualToString:@"CatchThief"]){
        
        person = [Police person];
        person.name = @"chonglong";
        person.age  = 30;
        [person setWorkBlock:^(Person * _Nonnull person) {
            Police *temp = (Police *)person;
            [temp catchThiefWitfName:@"Tom"];
        }];
    }else{
        
        person = [Police person];
        person.name = @"-----";
        person.age  = 0;
    }
    return person;
}
@end

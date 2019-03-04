//
//  main.m
//  工厂模式
//
//  Created by 伟大的大伟😘 on 2019/1/13.
//  Copyright © 2019 伟大的大伟😘. All rights reserved.


#import <Foundation/Foundation.h>
//#import "Student.h"
//#import "Police.h"
#import "PersonFactory.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 解决什么样的场景,遇到什么问题使用工厂模式。
        //设计的类不能完全预测 多少 子类的对象。
        //将子类的实现，封装在内部 只需要对外 保留出 接口即可。
//
//        Student *student = [Student person];
//        [student setWorkBlock:^(Person * _Nonnull person) {
//            Student *temp = (Student *)person;
//            [temp readBookWtihName:@"ios"];
//        }];
//        [student dowork];
//
//
//
//
//        Police *police = [Police person];
//        [police setWorkBlock:^(Person * _Nonnull person) {
//            Police *temp = (Police *)person;
//            [temp catchThiefWitfName:@"Tom"];
//        }];
//        [police dowork];
        
        
        Person *person = [PersonFactory personWithTask:@"ReadBook"];
        [person dowork];
        
        
        Person *person1 = [PersonFactory personWithTask:@"CatchThief"];
        [person1 dowork];
        
        
        Person *person2 = [PersonFactory personWithTask:@"C"];
        [person2 dowork];
    }
    return 0;
}

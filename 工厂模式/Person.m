//
//  Person.m
//  工厂模式
//
//  Created by 伟大的大伟😘 on 2019/1/13.
//  Copyright © 2019 伟大的大伟😘. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)person {
    return [[self alloc]init];
}
- (void)dowork {
    
    if (self.workBlock) {
        self.workBlock(self);
    }
}
@end

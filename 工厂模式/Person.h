//
//  Person.h
//  工厂模式
//
//  Created by 伟大的大伟😘 on 2019/1/13.
//  Copyright © 2019 伟大的大伟😘. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    @protected
    NSString * _name;
    NSInteger  _ahe;
}
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)NSInteger age;

@property(nonatomic,copy)void (^workBlock)(Person *person);

+(instancetype)person;
-(void)dowork;
@end

NS_ASSUME_NONNULL_END

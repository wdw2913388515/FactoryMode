//
//  PersonFactory.h
//  工厂模式
//
//  Created by 伟大的大伟😘 on 2019/1/13.
//  Copyright © 2019 伟大的大伟😘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
NS_ASSUME_NONNULL_BEGIN

@interface PersonFactory : NSObject

+(Person *)personWithTask:(NSString *)task;

@end

NS_ASSUME_NONNULL_END

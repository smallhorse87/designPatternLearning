//
//  Proxy.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "UserModelApi.h"

NS_ASSUME_NONNULL_BEGIN

@class UserModel;

@interface Proxy : UserModelApi

- (instancetype)initWithModel:(UserModel*) realSubject;

@end

NS_ASSUME_NONNULL_END

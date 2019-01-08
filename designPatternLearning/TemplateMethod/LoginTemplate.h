//
//  LoginTemplate.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/8.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LoginModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginTemplate : NSObject

- (BOOL) login:(LoginModel*) lm;

@end

NS_ASSUME_NONNULL_END

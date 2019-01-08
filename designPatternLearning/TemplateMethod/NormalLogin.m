//
//  NormalLogin.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/8.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "NormalLogin.h"

#import "LoginModel.h"

@implementation NormalLogin

- (LoginModel*) findLoginUser:(NSString*) loginId
{
    LoginModel *lm = [[LoginModel alloc] init];
    lm.loginId = loginId;
    lm.pwd     = @"testpwd";

    return lm;
}

@end

//
//  WorkerLogin.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/8.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "WorkerLogin.h"

#import "LoginModel.h"

@implementation WorkerLogin

- (LoginModel*) findLoginUser:(NSString*) loginId
{
    LoginModel *lm = [[LoginModel alloc] init];
    lm.loginId     = loginId;
    lm.pwd         = @"workerpwd";

    return lm;
}

- (NSString*) encryptPwd:(NSString*)pwd
{
    NSLog(@"使用MD5进行密码加密");

    return pwd;
}

@end

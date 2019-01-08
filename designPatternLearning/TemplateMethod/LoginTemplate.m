//
//  LoginTemplate.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/8.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "LoginTemplate.h"

@implementation LoginTemplate

- (BOOL) login:(LoginModel*) lm
{
    LoginModel *dbLm = [self findLoginUser:lm.loginId];
    
    if(dbLm != NULL) {
        NSString *encryptPwd = [self encryptPwd:lm.pwd];
        lm.pwd = encryptPwd;
        
        return [self match:lm db:dbLm];
    }

    return YES;
}

- (LoginModel*) findLoginUser:(NSString*)loginId
{
    return nil;
}

- (NSString*) encryptPwd:(NSString*)pwd
{
    return pwd;
}

- (BOOL) match:(LoginModel*)lm db:(LoginModel*)dbLm
{
    if([lm.loginId isEqualToString:dbLm.loginId]
       && [lm.pwd isEqualToString:dbLm.pwd]){
        
        return YES;
    }
    
    return NO;
}

@end

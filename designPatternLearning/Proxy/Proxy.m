//
//  Proxy.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "Proxy.h"

#import "UserModel.h"

@interface Proxy()
{
    UserModel *realSubject;
    
    BOOL      loaded;
}
@end

@implementation Proxy

- (instancetype)initWithModel:(UserModel*) realSubject
{
    self = [super init];
    if (self) {
        self->realSubject = realSubject;
    }

    return self;
}

- (NSString*)userId
{
    return realSubject.userId;
}

- (void)setUserId:(NSString *)userId
{
    realSubject.userId = userId;
}

- (NSString*)name
{
    return realSubject.name;
}

- (void)setName:(NSString *)name
{
    realSubject.name = name;
}

- (void)setSex:(NSString *)sex
{
    realSubject.sex = sex;
}

- (void)setDepId:(NSString *)depId
{
    realSubject.depId = depId;
}

- (NSString*)sex
{
    if(!loaded) {
        [self reload];
        
        loaded = YES;
    }
    
    return realSubject.sex;
}

- (NSString*)depId
{
    if(!loaded) {
        [self reload];
        
        loaded = YES;
    }

    return realSubject.depId;
}

- (void)reload
{
    NSLog(@"重新查询数据库获取完整的用户数据，userId == %@", realSubject.userId);
    
    //模拟从数据源查询
    //select * from tbl_user where userId=?
    
    realSubject.depId = @"22";

    realSubject.sex   = @"Male";
}

@end

//
//  ServiceRequestVisitor.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "ServiceRequestVisitor.h"

#import "EnterpriseCustomer.h"

#import "PersonalCustomer.h"

@implementation ServiceRequestVisitor

- (void) visitEnterpriseCustomer:(EnterpriseCustomer*) ec
{
    NSLog(@"%@ 企业提出服务请求", ec.name);
}

- (void) visitPersonalCustomer:(PersonalCustomer*) pc
{
    NSLog(@"客户%@提出服务请求", pc.name);
}

@end

//
//  PredilectionAnalyzeVisitor.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "PredilectionAnalyzeVisitor.h"

#import "EnterpriseCustomer.h"

#import "PersonalCustomer.h"

@implementation PredilectionAnalyzeVisitor

- (void) visitEnterpriseCustomer:(EnterpriseCustomer*) ec
{
    NSLog(@"现在对企业客户%@ 进行产品偏好分析", ec.name);
}

- (void) visitPersonalCustomer:(PersonalCustomer*) pc
{
    NSLog(@"现在对个人客户%@ 进行产品偏好分析", pc.name);
}

@end

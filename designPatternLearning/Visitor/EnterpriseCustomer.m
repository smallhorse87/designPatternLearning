//
//  EnterpriseCustomer.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "EnterpriseCustomer.h"

@implementation EnterpriseCustomer

- (void) accept:(id<Visitor>) visitor
{
    [visitor visitEnterpriseCustomer:self];
}

@end

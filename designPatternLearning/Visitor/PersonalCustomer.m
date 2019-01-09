//
//  PersonalCustomer.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "PersonalCustomer.h"

@implementation PersonalCustomer

- (void) accept:(id<Visitor>) visitor
{
    [visitor visitPersonalCustomer:self];
}

@end

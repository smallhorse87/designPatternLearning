//
//  LargeCustomerStrategy.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "LargeCustomerStrategy.h"

@implementation LargeCustomerStrategy

- (double) calcPrice:(double)goodsPrice
{
    NSLog(@"对于大客户，统一折扣10%%");

    return goodsPrice * (1-0.1);
}

@end

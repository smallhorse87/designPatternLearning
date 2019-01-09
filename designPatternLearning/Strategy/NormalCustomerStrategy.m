//
//  NormalCustomerStrategy.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "NormalCustomerStrategy.h"

@implementation NormalCustomerStrategy

- (double) calcPrice:(double)goodsPrice
{
    NSLog(@"对于新客户或者是普通客户，没有折扣");

    return goodsPrice;
}

@end

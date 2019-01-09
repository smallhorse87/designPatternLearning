//
//  OldCustomerStrategy.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "OldCustomerStrategy.h"

@implementation OldCustomerStrategy

- (double) calcPrice:(double)goodsPrice
{
    NSLog(@"对于老客户，统一折扣5%%");

    return goodsPrice * (1-0.05);
}

@end

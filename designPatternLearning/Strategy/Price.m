//
//  Price.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "Price.h"

@interface Price()
{
    id<Strategy> strategy;
}
@end

@implementation Price

- (instancetype)initWithStrategy:(id<Strategy>) strategy
{
    self = [super init];
    if (self) {
        self->strategy = strategy;
    }
    return self;
}

- (double) quote:(double) goodsPrice
{
    return [self->strategy calcPrice:goodsPrice];
}

@end

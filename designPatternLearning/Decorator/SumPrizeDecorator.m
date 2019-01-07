//
//  SumPrizeDecorator.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "SumPrizeDecorator.h"

#import "Component.h"

#import "TempDB.h"

@implementation SumPrizeDecorator

- (instancetype)initWithComponent:(id<Component>) c
{
    self = [super initWithComponent:c];
    
    if (self) {
        
    }
    return self;
}

- (double) calcPrize:(NSString *)user begin:(NSDate *)begin end:(NSDate *)end
{
    double money = [super calcPrize:user begin:begin end:end];
    
    double prize = 100000 * 0.001;

    NSLog(@"%@累积奖金%f",user,prize);

    return money + prize;
}

@end

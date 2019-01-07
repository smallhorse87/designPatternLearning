//
//  MonthPrizeDecorator.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "MonthPrizeDecorator.h"

#import "Component.h"

#import "TempDB.h"

@implementation MonthPrizeDecorator

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
    
    double prize = [TempDB mapMonthSaleMoney:user] * 0.03;
    
    NSLog(@"%@当月业务奖金%f",user,prize);

    return money + prize;
}

@end

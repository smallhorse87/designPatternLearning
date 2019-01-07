//
//  GroupPrizeDecorator.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "GroupPrizeDecorator.h"

#import "Component.h"

#import "TempDB.h"

@implementation GroupPrizeDecorator

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
    
    double group = 0.0;
    
    for(NSNumber *d in [TempDB mapMonthSaleMoneyValues]){
        group += [d doubleValue];
    }
    
    double prize = group * 0.01;
    
    NSLog(@"%@当月团队业务奖金%f",user,prize);

    return money + prize;
}

@end

//
//  TempDB.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "TempDB.h"

@implementation TempDB

+(double)mapMonthSaleMoney:(NSString*)user
{
    if([user isEqualToString:@"张三"])
        return 1500;
    else if([user isEqualToString:@"王五"])
        return 2000;
    
    return 1000;
}

+(NSArray*)mapMonthSaleMoneyValues
{
    return @[@(1000),@(1500),@(2000),];
}

@end

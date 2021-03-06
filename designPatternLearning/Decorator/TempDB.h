//
//  TempDB.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TempDB : NSObject

+(double)mapMonthSaleMoney:(NSString*)user;

+(NSArray*)mapMonthSaleMoneyValues;

@end

NS_ASSUME_NONNULL_END

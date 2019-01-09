//
//  Price.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Strategy.h"

NS_ASSUME_NONNULL_BEGIN

@interface Price : NSObject

- (instancetype)initWithStrategy:(id<Strategy>) strategy;

- (double) quote:(double) goodsPrice;

@end

NS_ASSUME_NONNULL_END

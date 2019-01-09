//
//  Strategy.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Strategy <NSObject>

- (double) calcPrice:(double)goodsPrice;

@end

NS_ASSUME_NONNULL_END

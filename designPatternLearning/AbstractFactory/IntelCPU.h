//
//  IntelCPU.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CPUApi.h"

NS_ASSUME_NONNULL_BEGIN

@interface IntelCPU : NSObject<CPUApi>

@property (nonatomic,assign) int pins;

@end

NS_ASSUME_NONNULL_END

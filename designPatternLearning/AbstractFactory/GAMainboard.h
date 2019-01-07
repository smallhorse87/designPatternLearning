//
//  GAMainboard.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MainboardApi.h"

NS_ASSUME_NONNULL_BEGIN

@interface GAMainboard : NSObject<MainboardApi>

@property (nonatomic,assign) int cpuHoles;

@end

NS_ASSUME_NONNULL_END

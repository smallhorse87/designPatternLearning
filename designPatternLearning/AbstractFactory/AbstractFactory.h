//
//  AbstractFactory.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CPUApi.h"

#import "MainboardApi.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractFactory <NSObject>

- (id<CPUApi>)      createCPUApi;

- (id<MainboardApi>)createMainboardApi;

@end

NS_ASSUME_NONNULL_END

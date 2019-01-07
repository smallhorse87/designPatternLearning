//
//  Decorator.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Component.h"

NS_ASSUME_NONNULL_BEGIN

@interface Decorator : NSObject<Component>

- (instancetype)initWithComponent:(id<Component>) c;

@end

NS_ASSUME_NONNULL_END

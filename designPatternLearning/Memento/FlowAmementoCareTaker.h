//
//  FlowAmementoCareTaker.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FlowAMockMemento.h"

NS_ASSUME_NONNULL_BEGIN

@interface FlowAmementoCareTaker : NSObject

- (void)saveMemento:(id<FlowAMockMemento>) memento;
- (id<FlowAMockMemento>) retriveMemento;

@end

NS_ASSUME_NONNULL_END

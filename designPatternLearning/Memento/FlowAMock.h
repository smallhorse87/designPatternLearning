//
//  FlowAMock.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FlowAMockMemento.h"

NS_ASSUME_NONNULL_BEGIN

@interface FlowAMock : NSObject

- (instancetype)initWithName:(NSString*)flowName;

- (void) runPhaseOne;
- (void) schema1;
- (void) schema2;

- (id<FlowAMockMemento>) createMemento;
- (void) setMemento:(id<FlowAMockMemento>) memento;

@end

NS_ASSUME_NONNULL_END

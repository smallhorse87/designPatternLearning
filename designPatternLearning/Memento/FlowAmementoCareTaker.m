//
//  FlowAmementoCareTaker.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "FlowAmementoCareTaker.h"

#import "FlowAMockMemento.h"

@interface FlowAmementoCareTaker()

@property (nonatomic, strong) id<FlowAMockMemento> memento;

@end

@implementation FlowAmementoCareTaker

- (void)saveMemento:(id<FlowAMockMemento>) memento
{
    _memento = memento;
}

- (id<FlowAMockMemento>) retriveMemento
{
    return _memento;
}

@end

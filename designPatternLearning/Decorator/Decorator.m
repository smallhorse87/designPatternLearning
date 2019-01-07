//
//  Decorator.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "Decorator.h"

@interface Decorator()
{
    id<Component> c;
}
@end

@implementation Decorator

- (instancetype)initWithComponent:(id<Component>) c
{
    self = [super init];
    if (self) {
        self->c = c;
    }
    return self;
}

- (double) calcPrize:(NSString*)user begin:(NSDate*)begin end:(NSDate*)end
{
    return [c calcPrize:user begin:begin end:end];
}

@end

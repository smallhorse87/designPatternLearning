//
//  Box.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/8.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "Box.h"

@implementation Box

- (void) openButtonPressed
{
    [_openCommand execute];
}

- (void) resetButtonPressed
{
    [_resetCommand execute];
}

@end

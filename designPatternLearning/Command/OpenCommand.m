//
//  OpenCommand.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/8.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "OpenCommand.h"

@interface OpenCommand()
{
    id<MainBoardApi> mainBoard;
}
@end

@implementation OpenCommand

- (instancetype)initWithMainBoardApi:(id<MainBoardApi>) mainBoard
{
    self = [super init];
    if (self) {
        self->mainBoard = mainBoard;
    }
    return self;
}

- (void) execute
{
    [self->mainBoard open];
}

@end

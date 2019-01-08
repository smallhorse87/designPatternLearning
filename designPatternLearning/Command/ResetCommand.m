//
//  ResetCommand.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/8.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "ResetCommand.h"

@interface ResetCommand()
{
    id<MainBoardApi> mainBoard;
}
@end

@implementation ResetCommand

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

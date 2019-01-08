//
//  ResetCommand.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/8.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Command.h"
#import "MainBoardApi.h"

NS_ASSUME_NONNULL_BEGIN

@interface ResetCommand : NSObject<Command>

- (instancetype)initWithMainBoardApi:(id<MainBoardApi>) mainBoard;

@end

NS_ASSUME_NONNULL_END

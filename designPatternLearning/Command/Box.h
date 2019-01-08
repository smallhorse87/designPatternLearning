//
//  Box.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/8.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

@property (nonatomic,strong) id<Command> openCommand;

@property (nonatomic,strong) id<Command> resetCommand;

- (void) openButtonPressed;

- (void) resetButtonPressed;

@end

NS_ASSUME_NONNULL_END

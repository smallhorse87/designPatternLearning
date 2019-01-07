//
//  Component.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Component <NSObject>

- (double) calcPrize:(NSString*)user begin:(NSDate*)begin end:(NSDate*)end;

@end

NS_ASSUME_NONNULL_END

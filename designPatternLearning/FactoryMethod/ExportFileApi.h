//
//  ExportFileApi.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/4.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@protocol ExportFileApi <NSObject>

- (BOOL) export:(NSString*) data;

@end

NS_ASSUME_NONNULL_END

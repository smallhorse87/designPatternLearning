//
//  GigaMainBoard.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/8.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "GigaMainBoard.h"

@implementation GigaMainBoard

- (void) open
{
    NSLog(@"技嘉主板现在正在开机，请稍等");
    NSLog(@"接通电源......");
    NSLog(@"设备检查......");
    NSLog(@"装载系统......");
    NSLog(@"机器正常运转起来......");
    NSLog(@"机器已经正常打开，请操作");
}

- (void) reset
{
    NSLog(@"技嘉主板现在正在重新启动机器，请稍等");
    NSLog(@"机器已经正常打开，请操作");
}

@end

//
//  ExportOperate.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/4.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "ExportOperate.h"

@implementation ExportOperate

- (BOOL) export:(NSString*)data
{
    id<ExportFileApi> api = [self factoryMethod];
    
    return [api export:data];
}

- (id<ExportFileApi>) factoryMethod
{
    NSAssert(false, @"abstruct method");

    return nil;
}

@end

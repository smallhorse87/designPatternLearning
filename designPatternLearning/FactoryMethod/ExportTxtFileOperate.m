//
//  ExportTxtFileOperate.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/4.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "ExportTxtFileOperate.h"

#import "ExportTxtFile.h"

@implementation ExportTxtFileOperate

- (id<ExportFileApi>) factoryMethod
{
    return [[ExportTxtFile alloc] init];
}

@end

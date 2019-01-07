//
//  Director.m
//  designPatternLearning
//
//  Created by mac on 2019/1/5.
//  Copyright © 2019 chenxiaosong. All rights reserved.
//

#import "Director.h"

#import "ExportDataModel.h"
#import "ExportFooterModel.h"
#import "ExportHeaderModel.h"

@interface Director()

@end

@implementation Director

- (void) construct:(ExportHeaderModel*)ehm
              data:(NSDictionary*)mapData
            footer:(ExportFooterModel*)efm
{
    //1，先构建Header
    [self.builder buildHeader:ehm];
    
    //1，再构建Body
    [self.builder buildBody:mapData];
    
    //3，最后构建Footer
    [self.builder buildFooter:efm];
}

@end

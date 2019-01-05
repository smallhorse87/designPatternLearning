//
//  TxtBuilder.m
//  designPatternLearning
//
//  Created by mac on 2019/1/5.
//  Copyright © 2019 chenxiaosong. All rights reserved.
//

#import "TxtBuilder.h"

#import "Builder.h"

@interface TxtBuilder()<Builder>

@end

@implementation TxtBuilder

- (void) buildBody:(NSDictionary*)mapData
{
    for (NSString *tblName in mapData) {
        
    }
}

- (void) buildFooter:(ExportFooterModel *)efm
{
    
}

- (void) buildHeader:(ExportHeaderModel *)ehm
{

}

@end

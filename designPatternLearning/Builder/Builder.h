//
//  Builder.h
//  designPatternLearning
//
//  Created by mac on 2019/1/5.
//  Copyright © 2019 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ExportHeaderModel.h"

#import "ExportDataModel.h"

#import "ExportFooterModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Builder <NSObject>

- (void) buildHeader:(ExportHeaderModel*) ehm;

- (void) buildBody  :(NSDictionary*) mapData;

- (void) buildFooter:(ExportFooterModel*) efm;

@end

NS_ASSUME_NONNULL_END

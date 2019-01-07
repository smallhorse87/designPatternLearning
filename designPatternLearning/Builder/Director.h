//
//  Director.h
//  designPatternLearning
//
//  Created by mac on 2019/1/5.
//  Copyright © 2019 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Builder.h"

NS_ASSUME_NONNULL_BEGIN

@interface Director : NSObject

@property (nonatomic, strong) id<Builder> builder;

- (void) construct:(ExportHeaderModel*)ehm
              data:(NSDictionary*)mapData
            footer:(ExportFooterModel*)efm;

@end

NS_ASSUME_NONNULL_END

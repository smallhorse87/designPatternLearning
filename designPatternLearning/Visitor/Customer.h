//
//  Customer.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Visitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface Customer : NSObject

@property (nonatomic, strong) NSString *customerId;
@property (nonatomic, strong) NSString *name;

- (void) accept:(id<Visitor>) visitor;

@end

NS_ASSUME_NONNULL_END

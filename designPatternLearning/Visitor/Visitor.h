//
//  Visitor.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EnterpriseCustomer,PersonalCustomer;

NS_ASSUME_NONNULL_BEGIN

@protocol Visitor <NSObject>

- (void) visitEnterpriseCustomer:(EnterpriseCustomer*) ec;

- (void) visitPersonalCustomer:(PersonalCustomer*) pc;

@end

NS_ASSUME_NONNULL_END

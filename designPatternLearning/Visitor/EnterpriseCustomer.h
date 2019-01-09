//
//  EnterpriseCustomer.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "Customer.h"

NS_ASSUME_NONNULL_BEGIN

@interface EnterpriseCustomer : Customer

@property (nonatomic, strong) NSString *linkman;
@property (nonatomic, strong) NSString *linkTelephone;
@property (nonatomic, strong) NSString *registerAddress;

@end

NS_ASSUME_NONNULL_END

//
//  ComputerEngineer.h
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AbstractFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface ComputerEngineer : NSObject

-(void)makeComputer:(id<AbstractFactory>) schema;

@end

NS_ASSUME_NONNULL_END

//
//  Facade.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "Facade.h"

#import "AModuleImpl.h"

#import "BModuleImpl.h"

@implementation Facade

-(void)test
{
    id<AModuleApi> a = [[AModuleImpl alloc] init];
    
    id<BModuleApi> b = [[BModuleImpl alloc] init];
    
    [a testA];
    
    [b testB];
}

@end

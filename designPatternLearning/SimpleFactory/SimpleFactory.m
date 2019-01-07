//
//  SimpleFactory.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/4.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "SimpleFactory.h"

#import "ReadingPoem.h"
#import "DirtyWordApi.h"

@implementation SimpleFactory

+ (id<Api>) createApi:(int) condition
{
    switch (condition) {
        case 0:
            return [[DirtyWordApi alloc] init];
            
        case 1:
            return [[ReadingPoem alloc] init];

        default:
            return nil;
    }
}

@end

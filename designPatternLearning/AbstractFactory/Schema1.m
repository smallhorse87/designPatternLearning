//
//  Schema1.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "Schema1.h"

#import "IntelCPU.h"

#import "GAMainboard.h"

@implementation Schema1

- (id<CPUApi>)createCPUApi
{
    IntelCPU *cpu = [[IntelCPU alloc] init];
    cpu.pins = 1156;

    return cpu;
}

- (id<MainboardApi>)createMainboardApi
{
    GAMainboard *mainboard = [[GAMainboard alloc] init];
    mainboard.cpuHoles = 1156;
    
    return mainboard;
}

@end

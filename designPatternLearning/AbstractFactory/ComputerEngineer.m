//
//  ComputerEngineer.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/7.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "ComputerEngineer.h"

#import "Schema1.h"

@interface ComputerEngineer()
{
    id<CPUApi>       cpu;
    id<MainboardApi> mainboard;
}
@end

@implementation ComputerEngineer

-(void)makeComputer:(id<AbstractFactory>) schema
{
    [self prepareHardwares:schema];
}

-(void)prepareHardwares:(id<AbstractFactory>) schema
{
    cpu       = [schema createCPUApi];

    mainboard = [schema createMainboardApi];
}

@end

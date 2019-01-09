//
//  FlowAMock.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/9.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "FlowAMock.h"

@interface MementoImpl : NSObject<FlowAMockMemento>

@property (nonatomic, assign) int       tempResult;

@property (nonatomic, strong) NSString *tempState;

@end

@implementation MementoImpl

- (instancetype)initWithResult:(int)tempResult state:(NSString*)tempState
{
    self = [super init];
    if (self) {
        _tempResult = tempResult;
        
        _tempState  = tempState;
    }
    return self;
}

@end

@interface FlowAMock()

@property (nonatomic, strong) NSString *flowName;
@property (nonatomic, assign) int      tempResult;
@property (nonatomic, strong) NSString *tempState;

@end

@implementation FlowAMock

- (instancetype)initWithName:(NSString*)flowName
{
    self = [super init];
    if (self) {
        self.flowName = flowName;
    }
    return self;
}

- (void) runPhaseOne
{
    _tempResult = 3;
    _tempState = @"PhaseOne";
}

- (void) schema1
{
    _tempState = [_tempState stringByAppendingString:@",Schema1"];

    NSLog(@"%@:now run %d",_tempState,_tempResult);
    
    _tempResult += 11;
}

- (void) schema2
{
    _tempState = [_tempState stringByAppendingString:@",Schema2"];
    
    NSLog(@"%@:now run %d",_tempState,_tempResult);
    
    _tempResult += 22;
}

- (id<FlowAMockMemento>) createMemento
{
    return [[MementoImpl alloc] initWithResult:_tempResult state:_tempState];
}

- (void) setMemento:(id<FlowAMockMemento>) memento
{
    MementoImpl *mementoImpl = (MementoImpl*)memento;
    
    _tempResult = mementoImpl.tempResult;

    _tempState  = mementoImpl.tempState;
}

@end

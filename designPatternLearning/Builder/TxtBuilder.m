//
//  TxtBuilder.m
//  designPatternLearning
//
//  Created by mac on 2019/1/5.
//  Copyright © 2019 chenxiaosong. All rights reserved.
//

#import "TxtBuilder.h"

@interface TxtBuilder()

@property (nonatomic, strong) NSMutableString *buffer;

@end

@implementation TxtBuilder

- (NSMutableString*)buffer
{
    if(_buffer)
        return _buffer;
    
    _buffer = [[NSMutableString alloc] init];

    return _buffer;
}

- (void) buildBody:(NSDictionary*)mapData
{
    for (NSString *tblName in mapData) {
        [self.buffer appendString:[tblName stringByAppendingString:@"\n"]];

        for (ExportDataModel *edm in mapData[tblName]) {
            NSString *item = [NSString stringWithFormat:@"%@,%lf,%lf\n",edm.productId,edm.price,edm.price];
            [self.buffer appendString:item];
        }
    }
}

- (void) buildFooter:(ExportFooterModel *)efm
{
    [self.buffer appendString:efm.exportUser];
}

- (void) buildHeader:(ExportHeaderModel *)ehm
{
    NSString *content = [NSString stringWithFormat:@"%@,%@\n",ehm.depId,ehm.exportDate];
    [self.buffer appendString:content];
}

- (NSMutableString*) getResult
{
    return self.buffer;
}

@end

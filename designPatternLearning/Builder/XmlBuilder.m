//
//  XmlBuilder.m
//  designPatternLearning
//
//  Created by mac on 2019/1/5.
//  Copyright © 2019 chenxiaosong. All rights reserved.
//

#import "XmlBuilder.h"

#import "Builder.h"

@interface XmlBuilder()<Builder>

@property (nonatomic, strong) NSMutableString *buffer;

@end

@implementation XmlBuilder

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
        [self.buffer appendString:@"THIS IS XML BODY"];
        [self.buffer appendString:[tblName stringByAppendingString:@"\n"]];
        
        for (ExportDataModel *edm in mapData[tblName]) {
            NSString *item = [NSString stringWithFormat:@"%@,%lf,%lf\n",edm.productId,edm.price,edm.price];
            [self.buffer appendString:item];
        }
    }
}

- (void) buildFooter:(ExportFooterModel *)efm
{
    [self.buffer appendString:@"THIS IS XML FOOTER"];
    [self.buffer appendString:efm.exportUser];
}

- (void) buildHeader:(ExportHeaderModel *)ehm
{
    [self.buffer appendString:@"THIS IS XML HEADER"];
    NSString *content = [NSString stringWithFormat:@"%@,%@\n",ehm.depId,ehm.exportDate];
    [self.buffer appendString:content];
}

- (NSMutableString*) getResult
{
    return self.buffer;
}

@end

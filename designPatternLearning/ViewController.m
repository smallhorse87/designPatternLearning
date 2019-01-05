//
//  ViewController.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/4.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "ViewController.h"

#import "TxtBuilder.h"
#import "Director.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //生成器：将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。
    ExportHeaderModel *ehm = [[ExportHeaderModel alloc] init];
    ehm.depId = @"一分公司";
    ehm.exportDate = @"2018-05-18";
    
    NSMutableDictionary *mapData = [[NSMutableDictionary alloc] init];
    
    NSMutableArray *part1 = [[NSMutableArray alloc] init];
    ExportDataModel *edm1 = [[ExportDataModel alloc] init];
    edm1.productId = @"产品001号";
    edm1.price  = 100.00;
    edm1.amount = 80;
    [part1 addObject:edm1];
    
    ExportDataModel *edm2 = [[ExportDataModel alloc] init];
    edm2.productId = @"产品002号";
    edm2.price  = 99.00;
    edm2.amount = 55;
    [part1 addObject:edm2];
    
    [mapData setObject:part1 forKey:@"销售记录表"];
    
    ExportFooterModel *efm = [[ExportFooterModel alloc] init];
    efm.exportUser = @"张三";
    
    TxtBuilder *txtBuilder = [[TxtBuilder alloc] init];
    
    Director *director = [[Director alloc] init];
    director.builder = txtBuilder;
    
    [director construct:ehm data:mapData footer:efm];
    
    NSLog(@"\n输出文本文件的内容：\n%@",[txtBuilder getResult]);
}


@end

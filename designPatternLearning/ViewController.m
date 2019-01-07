//
//  ViewController.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/4.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "ViewController.h"

#import "SimpleFactory.h"

#import "ExportTxtFileOperate.h"
//#import "TxtBuilder.h"
#import "Director.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//---------------
//模式 之 创建类
//---------------

    //简单工厂：提供一个创建对象实例的功能，而无须关心其具体实现。被创建实例的类型可以是接口、抽象类，也可以是具体的类。
    //优点：无需了解构建过程，集中管理。
    //缺点：需要传入参数，获取对应对象。
    id<Api> api = [SimpleFactory createApi:1];
    [api printFixedString];

    //工厂方法：定义一个用于创建对象的接口，让子类决定实例化哪一个类，Factory Method使一个类的实例化延迟到其子类。
    //解释：‘子类’指的是抽象工厂的子类。
    //优点：连什么产品都不需要知道；一个工厂负责一个产品的生产。
    ExportOperate *operate = [[ExportTxtFileOperate alloc] init];
    [operate export:@"测试数据"];
    
    
    
    
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
    
//    TxtBuilder *txtBuilder = [[TxtBuilder alloc] init];
//    
//    Director *director = [[Director alloc] init];
//    director.builder = txtBuilder;
//    
//    [director construct:ehm data:mapData footer:efm];
//    
//    NSLog(@"\n输出文本文件的内容：\n%@",[txtBuilder getResult]);
}

@end

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
    
    
    
}

@end

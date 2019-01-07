//
//  ViewController.m
//  designPatternLearning
//
//  Created by chenxiaosong on 2019/1/4.
//  Copyright © 2019年 chenxiaosong. All rights reserved.
//

#import "ViewController.h"

#import "SimpleFactory.h"

#import "Schema1.h"
#import "ComputerEngineer.h"

#import "ExportTxtFileOperate.h"
#import "TxtBuilder.h"
#import "Director.h"

#import "Facade.h"

#import "Proxy.h"
#import "UserModel.h"

#import "MonthPrizeDecorator.h"
#import "SumPrizeDecorator.h"
#import "GroupPrizeDecorator.h"
#import "ConcreteComponent.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//-----------------
//模式 之 创建类 共6个
//-----------------
    [self creationPatterns];
    

//-----------------
//模式 之 结构类 共7个
//-----------------
    [self structurePatterns];

//-----------------
//模式 之 行为类 共11个
//-----------------
    [self behaviorPatterns];

}

- (void)structurePatterns
{
    //适配器模式
    //这个太简单了，略

    //外观模式：为子系统中的一组接口提供一个一致的界面，Facade模式定义了一个高层接口，这个接口使得这一子系统更加容易使用。
    //本质：封装交互，简化调用。
    NSLog(@"示例开始\n 外观模式");
    Facade *facade = [[Facade alloc] init];
    [facade test];
    NSLog(@"示例开始\n");

    //代理模式：为其他对象提供一种代理以控制对这个对象的访问。
    //本质：控制对象访问。
    NSLog(@"示例开始\n 代理模式");
    Proxy *proxy = [[Proxy alloc] initWithModel:[UserModel new]];
    proxy.userId = @"007";
    proxy.name   = @"James";
    NSLog(@"所在部门：%@", proxy.depId);
    NSLog(@"示例开始\n");

    //装饰模式：动态地给一个对象添加一些额外的职责。就增加功能来说，装饰模式比生成子类更为灵活。
    //本质：动态组合
    NSLog(@"示例开始\n 装饰模式");
    id<Component> c1 = [[ConcreteComponent alloc] init];
    Decorator *d1 = [[MonthPrizeDecorator alloc] initWithComponent:c1];
    Decorator *d2 = [[SumPrizeDecorator   alloc] initWithComponent:d1];

    double zs = [d2 calcPrize:@"张三" begin:NULL end:NULL];
    NSLog(@"======张三应得奖金：%f",zs);
    
    //如果是业务经理，还需要一个计算团队的奖金计算
    Decorator *d3 = [[GroupPrizeDecorator alloc] initWithComponent:d2];
    double ww = [d3 calcPrize:@"王五" begin:NULL end:NULL];
    NSLog(@"======王五应得奖金：%f",ww);
    NSLog(@"示例开始\n 装饰模式");

    //桥接模式

    //享元模式
    //UITableViewCell就是一种享元的使用

    //组合模式
    //太简单了，略
}

- (void)behaviorPatterns
{
    //职责链模式
    //iOS上响应触摸动作的机制就是职责链模式
    
    //命令模式
    
    //解释器模式
    
    //迭代器模式
    //NSArray，NSDictionary中就用到了
    
    //中介者模式
    //UINavigationController就是中介者
    
    //备忘录
    
    //观察者
    //KVO就是观察者模式
    
    //状态模式
    //这在后端中用的最多，比方订单状态和处理
    
    //策略模式
    
    //模板方法
    
    //访问者模式

}

- (void)creationPatterns
{
    //原型模式
    //太简单了，略
    
    //单例模式
    //AppDelegate就是单例

    //简单工厂：提供一个创建对象实例的功能，而无须关心其具体实现。被创建实例的类型可以是接口、抽象类，也可以是具体的类。
    //优点：无需了解构建过程，集中管理。
    //缺点：需要传入参数，获取对应对象。
    id<Api> api = [SimpleFactory createApi:1];
    [api printFixedString];
    
    //工厂方法：定义一个用于创建对象的接口，让子类决定实例化哪一个类，Factory Method使一个类的实例化延迟到其子类。
    //解释：‘子类’指的是抽象工厂的子类。
    //本质：延迟到子类来选择实现
    //优点：连什么产品都不需要知道；一个工厂负责一个产品的生产。
    ExportOperate *operate = [[ExportTxtFileOperate alloc] init];
    [operate export:@"测试数据"];
    
    //抽象工厂模式：提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类。
    //本质：选择产品簇的实现
    NSLog(@"示例开始\n 抽象工厂模式");
    Schema1 *schema1 = [[Schema1 alloc] init];
    [[[ComputerEngineer alloc] init] makeComputer:schema1];
    NSLog(@"示例结束\n");

    //生成器：将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。
    //本质：分离整体构建算法和部件构造
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

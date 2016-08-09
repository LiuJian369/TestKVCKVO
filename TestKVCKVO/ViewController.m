//
//  ViewController.m
//  TestKVCKVO
//
//  Created by 刘建 on 16/8/4.
//  Copyright © 2016年 liujian. All rights reserved.
//

#import "ViewController.h"
#import "People.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    People *peo = [[People alloc]init];
    [peo setValue:@"笑话" forKey:@"name"];
    NSLog(@"%@",peo.name);
    NSLog(@"%@",[peo valueForKey:@"name"]);
    
    Pot *po = [[Pot alloc]init];
    peo.pot = po;
    //peo.po.name = @"好好";
    
    [peo setValue:@"xiaohua" forKeyPath:@"pot.name"];
    NSLog(@"%@",peo.pot.name);
    
    
    NSDictionary *hello1 =[NSDictionary dictionaryWithObjectsAndKeys:@"abc",@"name",@"13",@"age",@"niha",@"school", nil];
    NSDictionary *hello2 =[NSDictionary dictionaryWithObjectsAndKeys:@"bcc",@"name",@"13",@"age",@"haha",@"school", nil];
    NSArray *arr = [[NSArray alloc]initWithObjects:hello1,hello2, nil];
    NSLog(@"%@",[arr valueForKeyPath:@"name.capitalizedString"]);
    [hello1 setValue:[hello1 valueForKeyPath:@"name.capitalizedString"] forKeyPath:@"name"];
    NSLog(@"%@",hello1);
    NSLog(@"%@", arr);
//    [arr setValue:@"name" forKeyPath:@"name"];
//    NSLog(@"%@",arr);
    
    
}


@end

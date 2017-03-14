//
//  ViewController.m
//  xinxinLove
//
//  Created by yuntong on 2017/3/14.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "ViewController.h"
#import "ZLViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"这是一个测试项目");
    NSLog(@"测试分支和master有啥不一样");
    ZLViewController *vc = [[ZLViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

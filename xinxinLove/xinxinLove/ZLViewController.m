//
//  ZLViewController.m
//  xinxinLove
//
//  Created by yuntong on 2017/3/14.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import "ZLViewController.h"

@interface ZLViewController ()

@end

@implementation ZLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第二个控制器";
    
    
    
    self.view.backgroundColor = [UIColor redColor];
    NSLog(@"这是在spring1分支上写的");
    
    
    //MARK:版本回滚1
    
    //MARK:版本回滚2
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

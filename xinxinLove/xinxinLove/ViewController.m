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
//    NSLog(@"这是一个测试项目");
//    NSLog(@"测试分支和master有啥不一样");
//    ZLViewController *vc = [[ZLViewController alloc]init];
//    [self.navigationController pushViewController:vc animated:YES];
    
////    都是在主线程执行,又想让他同步执行,会产生卡死
////    全局(串行)同步执行
//    NSLog(@"之前线程 - %@",[NSThread currentThread]);//主线程
//    dispatch_sync(dispatch_get_main_queue(), ^{//同步任务会阻塞当前线程
//        //它会阻塞当前线程并等待 Block 中的任务执行完毕，然后当前线程才会继续往下运行。
//        NSLog(@"sync - %@",[NSThread currentThread]);
//    });
//    NSLog(@"最后线程 - %@",[NSThread currentThread]);
    
    
//    dispatch_queue_t queue = dispatch_queue_create("myQueue", DISPATCH_QUEUE_SERIAL);//DISPATCH_QUEUE_SERIAL 或 NULL 表示创建串行队列。传入
//    dispatch_queue_t queue1 = dispatch_queue_create("myQueue", DISPATCH_QUEUE_CONCURRENT);//DISPATCH_QUEUE_CONCURRENT 表示创建并行队列。
//    NSLog(@"之前线程 - %@",[NSThread currentThread]);//主队列
//    dispatch_async(queue, ^{//串行队列异步执行
//        NSLog(@"async - %@",[NSThread currentThread]);//开辟新线程
//        dispatch_sync(queue, ^{
//            NSLog(@"sync - %@",[NSThread currentThread]);//上面新线程(未打印)
//        });
//        NSLog(@"async后 - %@",[NSThread currentThread]);//上面新线程(未打印)
//    });
//    NSLog(@"最后线程 - %@",[NSThread currentThread]);//主队列
    
    //创建队列组
    dispatch_group_t group = dispatch_group_create();
    //创建全局队列
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
   //使用队列组的方法执行每个任务
    dispatch_group_async(group, queue, ^{
        for (NSInteger i = 0; i < 3; i++) {
            NSLog(@"group-01任务1 - %@", [NSThread currentThread]);
        }
    });
    //使用队列组的方法执行每个任务
    dispatch_group_async(group, queue, ^{
        for (NSInteger i = 0; i < 8; i++) {
            NSLog(@"group-01任务2 - %@", [NSThread currentThread]);
        }
    });
    //使用队列组的方法执行每个任务
    dispatch_group_async(group, queue, ^{
        for (NSInteger i = 0; i < 5; i++) {
            NSLog(@"group-01任务3 - %@", [NSThread currentThread]);
        }
    });
    //重点:最后在这个方法内会自动通知
    dispatch_group_notify(group, queue, ^{
        NSLog(@"完成所有异步操作");
    });
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

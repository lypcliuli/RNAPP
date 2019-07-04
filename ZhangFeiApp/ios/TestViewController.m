//
//  TestViewController.m
//  ZhangFeiApp
//
//  Created by LYPC on 2019/6/25.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  self.title = @"测试页面";
  self.view.backgroundColor = [UIColor greenColor];
  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  [button setFrame:CGRectMake(100, 130, 100, 100)];
  [button setBackgroundColor:[UIColor redColor]];
  [button setTitle:@"dismissVC" forState:UIControlStateNormal];
  [button addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:button];
    // Do any additional setup after loading the view.
}

- (void)clickAction:(UIButton *)sender {
  [self dismissViewControllerAnimated:YES completion:nil];
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

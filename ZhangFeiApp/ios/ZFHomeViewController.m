//
//  ZFHomeViewController.m
//  ZhangFeiApp
//
//  Created by LYPC on 2019/7/4.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import "ZFHomeViewController.h"
#import "ZFSubViewController.h"

@interface ZFHomeViewController ()

@end

@implementation ZFHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  self.view.backgroundColor = [UIColor orangeColor];
  self.title = @"张飞出行";
  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  [button setFrame:CGRectMake(100, 100, 100, 100)];
  [button setBackgroundColor:[UIColor greenColor]];
  [button setTitle:@"去个人中心RN模块" forState:UIControlStateNormal];
  [button addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:button];
    // Do any additional setup after loading the view.
}

- (void)clickBtn:(UIButton *)sender {
  ZFSubViewController *vc = [[ZFSubViewController alloc] init];
  [self.navigationController pushViewController:vc animated:YES];
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

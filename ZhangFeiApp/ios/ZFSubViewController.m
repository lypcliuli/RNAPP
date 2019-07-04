//
//  ZFSubViewController.m
//  ZhangFeiApp
//
//  Created by LYPC on 2019/7/4.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import "ZFSubViewController.h"

#import <CodePush/CodePush.h>

#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

//引入SplashScreen库
//#import "RNSplashScreen.h"

@interface ZFSubViewController ()

@end

@implementation ZFSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  self.view.backgroundColor = [UIColor greenColor];
  self.title = @"详情页面";
    RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:nil];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                     moduleName:@"ZhangFeiApp"
                                              initialProperties:@{}];
  
    rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
    self.view = rootView;
    //运行SplashScreen库
//    [RNSplashScreen show];
    // Do any additional setup after loading the view.
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
#else
  return [CodePush bundleURL];
#endif
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

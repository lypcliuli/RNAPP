//
//  CalendarManager.m
//  ZhangFeiApp
//
//  Created by LYPC on 2019/6/25.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import "CalendarManager.h"
#import "TestViewController.h"
#import <React/RCTEventDispatcher.h>

@implementation CalendarManager

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(addEvent:(NSString *)name)
{
  
//  TestViewController *testVc = [[NSClassFromString(name) alloc] init];
//  UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:testVc];
//  [nav setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
//  UIViewController * uvc = (UIViewController *)[UIApplication sharedApplication].keyWindow.rootViewController;
//  [uvc presentViewController:nav animated: NO completion:nil];
}

@end

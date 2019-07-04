/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"

#import "ZFHomeViewController.h"
#import "ZFNavigationController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
  self.window.backgroundColor = [UIColor yellowColor];
  ZFNavigationController *navigat = [[ZFNavigationController alloc] initWithRootViewController:[[ZFHomeViewController alloc] init]];
  self.window.rootViewController = navigat;
  [self.window makeKeyAndVisible];
  // Override point for customization after application launch.
  return YES;
}

@end

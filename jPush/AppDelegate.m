//
//  AppDelegate.m
//  jPush
//
//  Created by cjcj on 16/9/13.
//  Copyright © 2016年 jun-object-c. All rights reserved.
//

#import "AppDelegate.h"
#import "CoreJPush.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [CoreJPush registerJPush:launchOptions];
  
    return YES;
}


@end

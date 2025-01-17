//
//  ViewController.m
//  jPush
//
//  Created by cjcj on 16/9/13.
//  Copyright © 2016年 jun-object-c. All rights reserved.
//

#import "ViewController.h"
#import "CoreJPush.h"
@interface ViewController ()<CoreJPushProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [CoreJPush addJPushListener:self];
        [CoreJPush setTags:[NSSet setWithArray:@[@"movie"]] alias:@"12343242" resBlock:^(BOOL res, NSSet *tags, NSString *alias) {
    
            if(res){
                NSLog(@"设置成功：%@,%@.%@",@(res),tags,alias);
            }else{
                NSLog(@"设置失败");
            }
        }];
    
}


- (void)dealloc{
    [CoreJPush removeJPushListener:self];

}

-(void)didReceiveRemoteNotification:(NSDictionary *)userInfo{
    
    NSLog(@"ViewController: %@",userInfo);
    
}

@end

//
//  CoreJPush.h
//  CoreJPush
//
//  Created by cjcj on 16/9/13.
//  Copyright © 2016年 jun-object-c. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate+JPush.h"
#import "CoreJPushSingleton.h"
#import "CoreJPushProtocol.h"
#import "JPUSHService.h"
@interface CoreJPush : NSObject<CoreJPushProtocol>
HMSingletonH(CoreJPush)


/** 注册JPush */
+(void)registerJPush:(NSDictionary *)launchOptions;


/** 添加监听者 */
+(void)addJPushListener:(id<CoreJPushProtocol>)listener;

/** 移除监听者 */
+(void)removeJPushListener:(id<CoreJPushProtocol>)listener;


/** 注册alias、tags */
+(void)setTags:(NSSet *)tags alias:(NSString *)alias resBlock:(void(^)(BOOL res, NSSet *tags,NSString *alias))resBlock;


@end

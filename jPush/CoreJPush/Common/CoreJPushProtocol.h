//
//  CoreJPushProtocol.h
//  CoreJPush
//
//  Created by cjcj on 16/9/13.
//  Copyright © 2016年 jun-object-c. All rights reserved.
//

@protocol CoreJPushProtocol <NSObject>

@required
-(void)didReceiveRemoteNotification:(NSDictionary *)userInfo;


@end
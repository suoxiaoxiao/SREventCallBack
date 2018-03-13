
//
//  EventActionProtocol.h
//  SREventCallBack
//
//  Created by 索晓晓 on 2018/3/8.
//  Copyright © 2018年 suoxiaoxiao. All rights reserved.
//

#ifndef EventActionProtocol_h
#define EventActionProtocol_h

#import <Foundation/Foundation.h>

@protocol EventActionProtocol <NSObject>

@optional
- (void)touchHandlewithEvent:(UIEvent *)event;


@end


#endif /* EventActionProtocol_h */

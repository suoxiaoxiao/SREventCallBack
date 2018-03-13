//
//  UIEvent+SRCallBack.h
//  SREventCallBack_Example
//
//  Created by 索晓晓 on 2018/3/8.
//  Copyright © 2018年 suoxiaoxiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIEvent (SRCallBack)

//事件触发关键字  事件类型 这个东西会将当前类名+调用方法名作为eventkey
@property (nonatomic ,strong)NSString *eventKey;

//事件源 -- 事件触发者
@property (nonatomic ,strong)id eventSource;

//当前事件执行者
@property (nonatomic ,strong)id eventPractitioners;



@end

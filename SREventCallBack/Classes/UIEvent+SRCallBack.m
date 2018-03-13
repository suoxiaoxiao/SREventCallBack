//
//  UIEvent+SRCallBack.m
//  SREventCallBack_Example
//
//  Created by 索晓晓 on 2018/3/8.
//  Copyright © 2018年 suoxiaoxiao. All rights reserved.
//

#import "UIEvent+SRCallBack.h"
#import <objc/runtime.h>

char *EventKey = "EventKey";
char *EventSource = "EventSource";
char *EventPractitioners = "eventPractitioners";
@implementation UIEvent (SRCallBack)

- (void)setEventKey:(NSString *)eventKey
{
    objc_setAssociatedObject(self, EventKey, eventKey, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)eventKey
{
  return  objc_getAssociatedObject(self, EventKey);
}

- (id)eventSource
{
   return  objc_getAssociatedObject(self, EventSource);
}
- (void)setEventSource:(id)eventSource
{
    objc_setAssociatedObject(self, EventSource, eventSource, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)eventPractitioners
{
    return  objc_getAssociatedObject(self, EventPractitioners);
}
- (void)setEventPractitioners:(id)eventPractitioners
{
    objc_setAssociatedObject(self, EventPractitioners, eventPractitioners, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

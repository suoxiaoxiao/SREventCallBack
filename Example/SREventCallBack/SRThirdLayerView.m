//
//  SRThirdLayerView.m
//  SREventCallBack_Example
//
//  Created by 索晓晓 on 2018/3/8.
//  Copyright © 2018年 suoxiaoxiao. All rights reserved.
//

#import "SRThirdLayerView.h"

@implementation SRThirdLayerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didclick)]];
        
    }
    return self;
}

- (void)didclick
{
    UIEvent *event = [[UIEvent alloc] init];
    event.eventKey = @"thirdKey";
    event.eventSource = self;
    [self touchHandlewithEvent:event];
}


@end

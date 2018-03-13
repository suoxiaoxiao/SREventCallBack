//
//  SRSecondLayerView.m
//  SREventCallBack_Example
//
//  Created by 索晓晓 on 2018/3/8.
//  Copyright © 2018年 suoxiaoxiao. All rights reserved.
//

#import "SRSecondLayerView.h"
#import "SRThirdLayerView.h"

@interface SRSecondLayerView ()

@property (nonatomic ,strong)SRThirdLayerView *thirdLayer;

@end


@implementation SRSecondLayerView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.thirdLayer = [[SRThirdLayerView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
        self.thirdLayer.backgroundColor = [UIColor redColor];
        [self addSubview:self.thirdLayer];
        
    }
    return self;
}

- (void)touchHandlewithEvent:(UIEvent *)event
{
    NSLog(@"这是SRSecondLayerView");
    [super touchHandlewithEvent:event];
}

@end

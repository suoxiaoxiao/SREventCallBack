//
//  SRFirstLayerView.m
//  SREventCallBack_Example
//
//  Created by 索晓晓 on 2018/3/8.
//  Copyright © 2018年 suoxiaoxiao. All rights reserved.
//

#import "SRFirstLayerView.h"
#import "SRSecondLayerView.h"


@interface SRFirstLayerView ()

@property (nonatomic ,strong)SRSecondLayerView *secondLayer;

@end

@implementation SRFirstLayerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.secondLayer = [[SRSecondLayerView alloc] initWithFrame:CGRectMake(20, 20, 150, 150)];
        self.secondLayer.backgroundColor = [UIColor greenColor];
        [self addSubview:self.secondLayer];
        
    }
    return self;
}

- (void)touchHandlewithEvent:(UIEvent *)event
{
    NSLog(@"这是SRFirstLayerView");
    [super touchHandlewithEvent:event];
}

@end

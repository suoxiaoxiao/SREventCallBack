//
//  SRSecondViewController.m
//  SREventCallBack_Example
//
//  Created by 索晓晓 on 2018/3/8.
//  Copyright © 2018年 suoxiaoxiao. All rights reserved.
//

#import "SRSecondViewController.h"
#import "SRFirstLayerView.h"

@interface SRSecondViewController ()


@property (nonatomic ,strong)SRFirstLayerView *firstLayer;
@end

@implementation SRSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.firstLayer = [[SRFirstLayerView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    self.firstLayer.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.firstLayer];
    
    // Do any additional setup after loading the view.
}
- (void)touchHandlewithEvent:(UIEvent *)event
{
    NSLog(@"SRSecondViewController 我接收到了");
    
    [super touchHandlewithEvent:event];
}

#pragma mark - 初始化Navi
- (void)initNavi
{
    
}
#pragma mark - 初始化UI
- (void)initUI
{
    
}
#pragma mark - 初始化Data
- (void)initData
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

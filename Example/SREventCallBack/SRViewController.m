//
//  SRViewController.m
//  SREventCallBack
//
//  Created by suoxiaoxiao on 03/08/2018.
//  Copyright (c) 2018 suoxiaoxiao. All rights reserved.
//

#import "SRViewController.h"

#import "SRSecondViewController.h"

@interface SRViewController ()



@end

@implementation SRViewController
- (IBAction)touch:(id)sender {
    SRSecondViewController *vc = [SRSecondViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
//    [self.view touchHandlewithEvent:nil];
    
	// Do any additional setup after loading the view, typically from a nib.
}




- (void)touchHandlewithEvent:(UIEvent *)event
{
    NSLog(@"SRViewController touchHandlewithEvent");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

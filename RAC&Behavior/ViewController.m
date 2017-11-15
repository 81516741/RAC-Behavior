//
//  ViewController.m
//  RAC&Behavior
//
//  Created by lingda on 2017/11/15.
//  Copyright © 2017年 btc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self presentViewController:[NSClassFromString(@"MyVC") new]  animated:YES completion:nil];
}

@end

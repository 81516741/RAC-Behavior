//
//  MyVC.m
//  RAC&Behavior
//
//  Created by lingda on 2017/11/15.
//  Copyright © 2017年 btc. All rights reserved.
//

#import "MyVC.h"
#import <ReactiveObjC.h>

@interface MyVC ()
@property (weak, nonatomic) IBOutlet UIButton *commitBtn;
@property (weak, nonatomic) IBOutlet UIButton *backBtn;

@end

@implementation MyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self.backBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    [[self.commitBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        NSLog(@"提交按钮被点击");
    }];
}

- (void)dealloc
{
    NSLog(@"MyVC被销毁了");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

@end

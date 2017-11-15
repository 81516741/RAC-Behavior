//
//  ButtonBehavior.m
//  btc
//
//  Created by lingda on 2017/9/1.
//  Copyright © 2017年 btc. All rights reserved.
//

#import "ButtonBehavior.h"
#import "TextFieldBehavior.h"
#import "ImageViewBehavior.h"

@implementation ButtonBehavior

-(void)awakeFromNib
{
    [super awakeFromNib];
    [self.behaviors enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isMemberOfClass:[TextFieldBehavior class]]) {
            TextFieldBehavior * behavior = (TextFieldBehavior *)obj;
            [[behavior.textField rac_signalForControlEvents:UIControlEventEditingChanged] subscribeNext:^(__kindof UIControl * _Nullable x) {
                [self check];
            }];
            [RACObserve(behavior.textField, text) subscribeNext:^(id  _Nullable x) {
                [self check];
            }];
        }
        
        if ([obj isMemberOfClass:[ImageViewBehavior class]]) {
            ImageViewBehavior *  behavior = (ImageViewBehavior *)obj;
            [RACObserve(behavior.imageView, image) subscribeNext:^(id  _Nullable x) {
                [self check];
            }];
        }
    }];
    [self check];
}


-(BOOL)check
{
    BOOL __block buttonEnable = YES;
    [self.behaviors enumerateObjectsUsingBlock:^(Behavior *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        buttonEnable = [obj check] && buttonEnable;
        if (!buttonEnable) {
            *stop = YES;
        }
    }];
    self.button.enabled = buttonEnable;
    if (buttonEnable) {
        [self.button setBackgroundColor:[UIColor redColor]];
    } else {
        [self.button setBackgroundColor:[UIColor lightGrayColor]];
    }
    return buttonEnable;
}

@end

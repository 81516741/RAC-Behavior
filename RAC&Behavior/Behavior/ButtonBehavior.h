//
//  ButtonBehavior.h
//  btc
//
//  Created by lingda on 2017/9/1.
//  Copyright © 2017年 btc. All rights reserved.
//

#import "Behavior.h"
@interface ButtonBehavior : Behavior

@property (nonatomic,copy)IBOutletCollection(Behavior) NSArray * behaviors;

@property (nonatomic,weak)IBOutlet UIButton * button;
@end

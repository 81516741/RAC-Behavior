//
//  LDButtonBehavior.h
//  btc
//
//  Created by lingda on 2017/9/1.
//  Copyright © 2017年 btc. All rights reserved.
//

#import "LDBehavior.h"
@interface LDButtonBehavior : LDBehavior

/**
 与之关联的所有行为
 */
@property (nonatomic,copy)IBOutletCollection(LDBehavior) NSArray * behaviors;

/**
 与之关联的UIButton
 */
@property (nonatomic,weak)IBOutlet UIButton * button;
@end

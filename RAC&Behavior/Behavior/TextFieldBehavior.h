//
//  TextFieldBehavior.h
//  btc
//
//  Created by lingda on 2017/9/1.
//  Copyright © 2017年 btc. All rights reserved.
//

#import "Behavior.h"

@interface TextFieldBehavior : Behavior

@property (assign ,nonatomic)IBInspectable NSInteger textLength;
@property (assign ,nonatomic)IBInspectable NSInteger minTextLength;

@property (nonatomic,weak)IBOutlet UITextField * textField;

@end

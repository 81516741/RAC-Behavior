//
//  TextFieldBehavior.h
//  btc
//
//  Created by lingda on 2017/9/1.
//  Copyright © 2017年 btc. All rights reserved.
//

#import "LDBehavior.h"

@interface LDTextFieldBehavior : LDBehavior

/**
 达到这个长度后就不再显示了，此时认为状态为ok
 */
@property (assign ,nonatomic)IBInspectable NSInteger textLength;

/**
 达到这个长度后就不再显示了，此时认为状态为ok
 */
@property (assign ,nonatomic)IBInspectable NSInteger minTextLength;

/**
 关联的UITextField
 */
@property (nonatomic,weak)IBOutlet UITextField * textField;

@end

//
//  ImageViewBehavior.h
//  btc
//
//  Created by lingda on 2017/9/4.
//  Copyright © 2017年 btc. All rights reserved.
//

#import "LDBehavior.h"

@interface LDImageViewBehavior : LDBehavior

/**
 关联的UIImageView
 */
@property (weak ,nonatomic)IBOutlet UIImageView * imageView;
@end

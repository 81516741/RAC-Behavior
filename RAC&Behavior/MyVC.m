//
//  MyVC.m
//  RAC&Behavior
//
//  Created by lingda on 2017/11/15.
//  Copyright © 2017年 btc. All rights reserved.
//

#import "MyVC.h"
#import <ReactiveObjC.h>
#import "TZImagePickerController.h"

@interface MyVC ()<TZImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation MyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameTextField.text = @"就是这个达";
    self.phoneNumTextField.text = @"123456789101234";
    
}


- (IBAction)back:(UIButton *)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)addImage:(UIButton *)sender {
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 delegate:self];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

- (void)imagePickerController:(TZImagePickerController *)picker didFinishPickingPhotos:(NSArray<UIImage *> *)photos sourceAssets:(NSArray *)assets isSelectOriginalPhoto:(BOOL)isSelectOriginalPhoto
{
    self.imageView.image = photos.firstObject;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)dealloc
{
    NSLog(@"MyVC被销毁了");
}

@end

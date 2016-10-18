//
//  ViewController.m
//  SKFCamera
//
//  Created by 孙凯峰 on 2016/10/18.
//  Copyright © 2016年 孙凯峰. All rights reserved.
//
#import "SKFCamera.h"
#import "ViewController.h"
@interface ViewController ()
- (IBAction)ViewCamera:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *ViewImageview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)ViewCamera:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
    SKFCamera *homec=[[SKFCamera alloc]init];
    __weak typeof(self)myself=self;
    homec.fininshcapture=^(UIImage *ss){
        if (ss) {
            NSLog(@"照片存在");
            myself.ViewImageview.image=ss;
        }
    } ;
        [myself presentViewController:homec animated:NO completion:^{}];}
    else{
        NSLog(@"相机调用失败");
    }
}

@end

//
//  ViewController.m
//  SKFCamerademo
//
//  Created by 孙凯峰 on 2016/11/16.
//  Copyright © 2016年 孙凯峰. All rights reserved.
//

#import "ViewController.h"
#import "SKFCamera.h"
@interface ViewController ()

- (IBAction)pushCameraclick:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *Kimageview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pushCameraclick:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        SKFCamera *homec=[[SKFCamera alloc]init];
        __weak typeof(self)myself=self;
        homec.fininshcapture=^(UIImage *ss){
            if (ss) {
                NSLog(@"照片存在");
                myself.Kimageview.image=ss;
            }
        } ;
        [myself presentViewController:homec animated:NO completion:^{}];}
    else{
        NSLog(@"相机调用失败");
    }

}
@end

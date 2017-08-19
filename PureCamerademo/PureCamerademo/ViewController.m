//
//  ViewController.m
//  PureCamerademo
//
//  Created by 孙凯峰 on 2016/11/16.
//  Copyright © 2016年 孙凯峰. All rights reserved.
//

#import "ViewController.h"
#import "PureCamera.h"
#import "TOCropViewController.h"
@interface ViewController () <TOCropViewControllerDelegate>

- (IBAction)pushCameraclick:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *Kimageview;
- (IBAction)pushCropClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *cropImageview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (YES) {
        NSLog(@"乱的代码");
        NSLog(@"i know");
        NSLog(@"代码");
        NSLog(@"j_");

    }

    //乱的代码
    [self performSelector:@selector(testcode) withObject:self afterDelay:3];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)testcode {
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushCameraclick:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        PureCamera *homec = [[PureCamera alloc] init];
        __weak typeof(self) myself = self;
        homec.fininshcapture = ^(UIImage *ss) {
            if (ss) {
                NSLog(@"照片存在");
                myself.Kimageview.image = ss;
            }
        };
        [myself presentViewController:homec
                             animated:NO
                           completion:^{
                           }];
    } else {
        NSLog(@"相机调用失败");
    }
}
- (IBAction)pushCropClick:(id)sender {
    TOCropViewController *cropController = [[TOCropViewController alloc] initWithImage:self.cropImageview.image];
    cropController.delegate = self;
    [self presentViewController:cropController animated:YES completion:nil];
}
- (void)cropViewController:(TOCropViewController *)cropViewController
            didCropToImage:(UIImage *)image
                  withRect:(CGRect)cropRect
                     angle:(NSInteger)angle {

    self.cropImageview.image = image;
    self.navigationItem.rightBarButtonItem.enabled = YES;
    CGRect viewFrame = [self.view convertRect:self.cropImageview.frame toView:self.navigationController.view];
    [cropViewController dismissAnimatedFromParentViewController:self
                                               withCroppedImage:image
                                                        toFrame:viewFrame
                                                     completion:^{
                                                     }];
    NSLog(@"最后");
}
@end

PureCamera
=


[![CI Status](http://img.shields.io/travis/wubianxiaoxian/PureCamera.svg?style=flat)](https://travis-ci.org/wubianxiaoxian/PureCamera)
[![Version](https://img.shields.io/cocoapods/v/PureCamera.svg?style=flat)](http://cocoapods.org/pods/PureCamera)
[![License](https://img.shields.io/cocoapods/l/PureCamera.svg?style=flat)](http://cocoapods.org/pods/PureCamera)
[![Platform](https://img.shields.io/cocoapods/p/PureCamera.svg?style=flat)](http://cocoapods.org/pods/PureCamera)



A custom camera that allows for free cropping of photos upon completion
----

Requirements
----

* Xcode 8 or higher
* iOS 8.0 or higher
* ARC

Version
----

* 1.6.3

Usage
----

*  Installation with CocoaPods: pod 'PureCamera', import

```objc
#import <PureCamera.h>  
```

*  Or download the demo locally and add PureCamera to your project, import

```objc
#import "PureCamera.h"
```

*  Add the following to info.plist

```objc
Privacy - Camera Usage Description      Use camera
```

*  Use the following method to call the camera

```objc
PureCamera *homec=[[PureCamera alloc]init];
__weak typeof(self)myself=self;
homec.fininshcapture=^(UIImage *ss){
    if (ss) {
        NSLog(@"Photo exists");
        //Here you can get the cropped photo
        myself.ViewImageview.image=ss;
    }
} ;
[self presentViewController:homec animated:NO completion:^{}];}
```

*  Use the following method to call the image cropping page

```objc
First import #import "TOCropViewController.h"
Adhere to @interface ViewController()<TOCropViewControllerDelegate>
Pass in an image and you can present the image cropping page

TOCropViewController *cropController = [[TOCropViewController alloc] initWithImage:self.cropImageview.image];
cropController.delegate = self;
[self presentViewController:cropController animated:YES completion:nil];

- (void)cropViewController:(TOCropViewController *)cropViewController didCropToImage:(UIImage *)image withRect:(CGRect)cropRect angle:(NSInteger)angle
{
   self.cropImageview.image=image;
   self.navigationItem.rightBarButtonItem.enabled = YES;
   //The following defines an animation effect, which is that when the image cropping page disappears, it will use the frame of the view you defined as the boundary after the disappearance.
   CGRect viewFrame = [self.view convertRect:self.cropImageview.frame toView:self.navigationController.view];
   [cropViewController dismissAnimatedFromParentViewController:self withCroppedImage:image toFrame:viewFrame completion:^{
   }];
}
```


![skfcamera相机录制gifnew.gif](http://upload-images.jianshu.io/upload_images/964698-c4869c9a7c92ae25.gif?imageMogr2/auto-orient/strip)

If you encounter any problems during use, please feel free to submit an issue.

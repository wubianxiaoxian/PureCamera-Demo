# SKFCamera
一个自定义相机，拍照完成可自由裁剪
######调用方法很简单，下载demo，将SKFCamera添加到工程，引入
    #import "SKFCamera.h"
然后五行代码就可以引用这个相机了

      SKFCamera *homec=[[SKFCamera alloc]init];
      __weak typeof(self)myself=self;
      homec.fininshcapture=^(UIImage *ss){
        if (ss) {
            NSLog(@"照片存在");
          //在这里获取裁剪后的照片
            myself.ViewImageview.image=ss;
        }
    } ;
        [self presentViewController:homec animated:NO completion:^{}];}
        
![](http://i1.piimg.com/4851/0071da17a0c177d6.gif)
######使用过程中，有任何问题，欢迎大家题issues

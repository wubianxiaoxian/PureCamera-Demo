/*!
 @abstract
 作者Github址：https://github.com/wubianxiaoxian
 作者微博 敲代码的树懒
 作者简书地址:http://www.jianshu.com/users/61b9640c876a/latest_articles
 作者Blog地址 http://www.cnblogs.com/sunkaifeng/
 @author   Created by sunkaifeng on  16/1/17
 Copyright © 2016年 孙凯峰. All rights reserved.
 Created by 孙凯峰 on 2016/10/18.
 */
#import <UIKit/UIKit.h>
typedef void (^fininshcapture)(UIImage
*image);
@interface SKFCamera : UIViewController
@property (nonatomic,copy) fininshcapture fininshcapture;

@end

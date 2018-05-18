/*!
 @abstract

 */
#import <UIKit/UIKit.h>
#import "TOCropViewController.h"

typedef void (^fininshcapture)(UIImage *image);
@interface PureCamera : UIViewController
@property (nonatomic,copy) fininshcapture fininshcapture;
//@property (nonatomic,assign) fininshcapture fininshcapture;
@property (nonatomic, assign) TOCropViewControllerAspectRatio aspectRatioStle;





@end

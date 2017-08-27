/*!
 @abstract

 */
#import <UIKit/UIKit.h>
typedef void (^fininshcapture)(UIImage *image);
@interface PureCamera : UIViewController
@property (nonatomic,copy) fininshcapture fininshcapture;

@end

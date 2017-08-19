/*!
 @abstract

 */
#import <UIKit/UIKit.h>
typedef void (^fininshcapture)(UIImage
*image);
@interface SKFCamera : UIViewController
@property (nonatomic,copy) fininshcapture fininshcapture;

@end

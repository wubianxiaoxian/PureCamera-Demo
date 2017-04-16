#
#  Be sure to run `pod spec lint skfcamera.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |s|
  s.name         = 'SKFCamera'
  s.version      = '1.3.2'
  s.summary      = "This one can customize the camera to take pictures of the page of the library, but also to support the cutting of the photo when the camera is completed."
  s.license  = "MIT"
  s.description  = 'This one can customize the camera to take pictures of the page of the library, but also to support the cutting of the photo when the camera is completed.thanyou' 
 s.homepage     = "https://github.com/wubianxiaoxian/SKFCamerademo"
  s.screenshots  = "http://i1.piimg.com/4851/0071da17a0c177d6.gif"
  s.author   = { 'Kaifeng Sun' => 'sunkaifengdiyi@163.com' }
  s.platform     = :ios, "7.0"
  s.source_files = "SKFCamera/**/*.{h,m}"
  s.resource = "SKFCamera/SKFCamera.bundle"
  s.requires_arc = true
  s.framework  = "UIKit"
  s.source    = { :git => "https://github.com/wubianxiaoxian/SKFCamerademo.git", :tag =>s.version }  
end 


#
#  Be sure to run `pod spec lint InspireKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "InspireKit"
  s.version      = "0.0.1"
  s.summary      = "Inspire your users with the wise words of Shia LaBeouf "
  s.description  = <<-DESC
                   I wrote this for a laugh about the new video. It shows This library flashes an image of Shia LaBeouf while reciting a line from the imfamous video. The combination of sound and image is random. Simply drop into your app and inspire your users.
                   DESC
  s.homepage     = "https://github.com/samjarman/InspireKit"
  s.license      = { :type => 'MIT'}
  s.author             = { "Sam Jarman" => "sam@samjarman.co.nz" }
  s.social_media_url   = "http://twitter.com/samjarman"
  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/samjarman/InspireKit.git", :tag => "v0.0.1"}
  s.source_files  = "InspireKit/SLInspireKit.{h,m}"
  s.resources = ["InspireKit/InspireKitImages/*.png", "InspireKit/InspireKitSounds/*.aiff"]
  s.framework  = "AVFoundation"
  s.requires_arc = true
end

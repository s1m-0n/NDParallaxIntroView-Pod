#
# Be sure to run `pod lib lint NDParallaxIntroView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NDParallaxIntroView"
  s.version          = "1.0"
  s.summary          = "NDParallaxIntroView is an easy to use InfoView with parallax effect to onboard your users to your iOS App."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "NDParallaxIntroView is an easy to use InfoView with parallax effect to onboard your users to your iOS App. You can easily set any image to get the beautiful parallax background and add multiple screens to onboard your users."

  s.homepage         = "https://github.com/s1m-0n/NDParallaxIntroView-Pod"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Simon Wicha" => "simon.wicha@nomis-development.net" }
  s.source           = { :git => "https://github.com/s1m-0n/NDParallaxIntroView-Pod.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.resources = 'NDParallaxIntroView/Classes/*.{xib}'
  s.source_files = 'NDParallaxIntroView/Classes/*.{h,m}'
  s.resource_bundles = {
    'NDParallaxIntroView' => ['NDParallaxIntroView/Assets/*.png'],
    'NDParallaxIntroView' => ['Pod/**/*.xib']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

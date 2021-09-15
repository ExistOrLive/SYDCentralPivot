#
# Be sure to run `pod lib lint SYDCentralPivot.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYDCentralPivot'
  s.version          = '1.4.0'
  s.summary          = 'A Simple Factory and Router for UIViewController,ServiceModel and some other object'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Factory and Router'

  s.homepage         = 'https://github.com/ExistOrLive/SYDCentralPivot'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ExistOrLive' => '2068531506@qq.com' }
  s.source           = { :git => 'https://github.com/ExistOrLive/SYDCentralPivot.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.subspec 'Core' do |core| 
    core.ios.deployment_target = '9.0'
    core.source_files = 'SYDCentralPivot/Classes/Core/*'
    core.public_header_files = 'SYDCentralPivot/Classes/Core/*.h'
  end

  s.subspec 'VC' do |vc| 
    vc.ios.deployment_target = '9.0'
    vc.source_files = 'SYDCentralPivot/Classes/VC/*'
    vc.public_header_files = 'SYDCentralPivot/Classes/VC/*.h'
    vc.dependency 'SYDCentralPivot/Core'
  end
  
  s.subspec 'Service' do |service| 
    service.ios.deployment_target = '9.0'
    service.source_files = 'SYDCentralPivot/Classes/Service/*'
    service.public_header_files = 'SYDCentralPivot/Classes/Service/*.h'
    service.dependency 'SYDCentralPivot/Core'
  end
  
  # s.resource_bundles = {
  #   'SYDCentralPivot' => ['SYDCentralPivot/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

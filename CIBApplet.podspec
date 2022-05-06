#
# Be sure to run `pod lib lint CIBApplet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CIBApplet'
  s.version          = '0.1.8'
  s.summary          = 'A short description of CIBApplet.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/peppapedar/CIBApplet'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'peppapedar' => 'peppapedar@qq.com' }
  s.source           = { :git => 'https://github.com/peppapedar/CIBApplet.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'CIBApplet/CIBApplet/Classes/**/*.{h,m,mm,pch}'
    
#  s.exclude_files = "CIBApplet/CIBApplet/*.plist"
   s.resource_bundles = {
     'CIBXAppSource' => ['CIBApplet/CIBApplet/*.xcassets']
   }
#  s.vendored_framework = 'CIBApplet/CIBApplet/frameworks/CFTCryptoKit.framework'
#  s.vendored_framework = 'CIBApplet/IFSecurity.framework'
  s.vendored_frameworks = "CIBApplet/CIBApplet/Classes/Frameworks/*.framework"
  # s.frameworks = 'UIKit', 'MapKit'
  s.vendored_libraries = "CIBApplet/CIBApplet/Classes/Libraries/*.a"
#
#  s.vendored_libraries = "CIBApplet/CIBApplet/Classes/library/*.framework"
  
  s.dependency 'WCDB','1.0.7.5'
  s.dependency 'Masonry','1.1.0'
  s.dependency 'AFNetworking', '3.1.0'
  s.dependency 'RDVTabBarController', '1.1.9'
  s.dependency 'SSZipArchive', '2.4.2'
  s.dependency 'SDWebImage', '5.11.1'
  s.dependency 'YYCache', '1.0.4'
  s.dependency 'MJExtension', '3.0.15.1'
  s.dependency 'YYModel', '1.0.4'
  s.dependency 'MKUI', '1.0.6.14'
  s.dependency 'YYText', '1.0.7'
#
  s.pod_target_xcconfig = {
#          'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/CIBApplet/CIBApplet/Classes/Frameworks',
#          'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/CIBApplet/CIBApplet/Classes/Libraries',
      'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
      'ENABLE_BITCODE'           => 'NO'
  }
end

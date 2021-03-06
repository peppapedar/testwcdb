#
# Be sure to run `pod lib lint testwcdb.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'testwcdb'
  s.version          = '0.1.8'
  s.summary          = 'A short description of testwcdb.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/peppapedar/testwcdb'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'peppapedar' => 'peppapedar@qq.com' }
  s.source           = { :git => 'https://github.com/peppapedar/testwcdb.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'testwcdb/testwcdb/Classes/**/*.{h,m,mm,pch}'

  # s.static_framework = true
    
#  s.exclude_files = "testwcdb/testwcdb/*.plist"
  #  s.resource_bundles = {
  #    'CIBXAppSource' => ['testwcdb/testwcdb/*.xcassets']
  #  }
#  s.vendored_framework = 'testwcdb/testwcdb/frameworks/CFTCryptoKit.framework'
#  s.vendored_framework = 'testwcdb/IFSecurity.framework'
  # s.vendored_frameworks = "testwcdb/testwcdb/Classes/Frameworks/*.framework"
  # s.frameworks = 'UIKit', 'MapKit'
  # s.vendored_libraries = "testwcdb/testwcdb/Classes/Libraries/*.a"
#
#  s.vendored_libraries = "testwcdb/testwcdb/Classes/library/*.framework"
  
s.requires_arc = true
s.dependency "WCDB", "~> 1.0.4"
s.libraries = 'c++', 'z'
s.xcconfig = {
    "CLANG_CXX_LANGUAGE_STANDARD" => "gnu++0x",
    "CLANG_CXX_LIBRARY" => "libc++",
}
# s.pod_target_xcconfig = { :CLANG_CXX_LANGUAGE_STANDARD => "c++11", :CLANG_CXX_LIBRARY => "libc++"}

# s.pod_target_xcconfig = {
#   # "GCC_PREPROCESSOR_DEFINITIONS" => "WCDB_BUILTIN_COLUMN_CODING SQLITE_HAS_CODEC",
#   # "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/WCDB",
#   # "LIBRARY_SEARCH_PATHS[sdk=macosx*]" => "$(SDKROOT)/usr/lib/system",
#   "CLANG_CXX_LANGUAGE_STANDARD" => "c++11",
#   "CLANG_CXX_LIBRARY" => "libc++",
#   "OTHER_CFLAGS" => "-fvisibility-inlines-hidden",
#   "OTHER_CPLUSPLUSFLAGS" => "-fvisibility-inlines-hidden",
#         'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC', 
#       'ENABLE_BITCODE'           => 'NO'
# }
#   s.pod_target_xcconfig = {
#     'CLANG_CXX_LANGUAGE_STANDARD' => "c++11", 
#     'CLANG_CXX_LIBRARY' => "libc++",
# #          'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/testwcdb/testwcdb/Classes/Frameworks',
# #          'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/testwcdb/testwcdb/Classes/Libraries',
#       'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
#       'ENABLE_BITCODE'           => 'NO'

#   }
end

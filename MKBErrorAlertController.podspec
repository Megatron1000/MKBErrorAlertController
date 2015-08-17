#
# Be sure to run `pod lib lint MKBErrorAlertController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MKBErrorAlertController"
  s.version          = "0.1.0"
  s.summary          = "A category on UIAlertController for easily displaying NSErrors in alerts."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = "A category on UIAlertController for easily displaying NSErrors in alerts along with blocks for optionally retrying and dealing with dismissing"

  s.homepage         = "https://github.com/Megatron1000/MKBErrorAlertController"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Mark Bridges" => "suport@mark-bridges.com" }
  s.source           = { :git => "https://github.com/Megatron1000/MKBErrorAlertController.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/markbridgesapps'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MKBErrorAlertController' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

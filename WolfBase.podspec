#
# Be sure to run `pod lib lint WolfBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WolfBase'
  s.version          = '0.1.0'
  s.summary          = 'A collection of conveniences for working with Swift code.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Created and maintained by Wolf McNally, who hates reinventing the wheel on every project.
                       DESC

  s.homepage         = 'https://github.com/thantthet/WolfBase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'thantthet' => 't@ttkz.me' }
  s.source           = { :git => 'https://github.com/thantthet/WolfBase.git', :branch => 'master' }

  s.ios.deployment_target = '10.0'

  s.source_files = 'WolfBase/WolfBase/**/*'
end

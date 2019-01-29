#
#  Be sure to run `pod spec lint SNetwork.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "SNetwork"
  s.version      = "0.0.1"
  s.summary      = "Simple and lightweight networking for your App"
  s.description  = <<-DESC 
  	This pod helps you make simple network requests.
                   DESC

  s.homepage     	   = 'https://github.com/kurtulusahmet/SNetwork.git'
  s.license            = 'MIT'
  s.author             = { "kurtulusahmettemel" => "kurtulusahmettemel@gmail.com" }
  s.social_media_url   = "https://twitter.com/_kurtulusahmet"
  s.source       	   = { :git => "https://github.com/kurtulusahmet/SNetwork.git", :tag => "#{s.version}" }
  s.framework 		   = "XCTest"
  
  s.requires_arc = true

  s.ios.deployment_target = '9.0'

  s.source_files = 'SNetwork/**/*.{c,h,hh,m,mm,swift}'
  s.dependency 'Alamofire', '~> 4.7'

  s.swift_version    = '4.2'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }

end

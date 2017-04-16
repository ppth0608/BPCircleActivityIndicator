Pod::Spec.new do |s|
  s.name         = "BPCircleActivityIndicator"
  s.version      = "0.1"
  s.summary      = "Circle Activity Indicator that display the progress of an ongoing task on iOS"
  s.description  = "BPCircleActivityIndicator is a clean and easy-to-use Activity Indicator meant to display the progress of an ongoing task on iOS."
  s.homepage     = "https://github.com/ppth0608/BPCircleActivityIndicator"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Ben.Park" => "ppth0608@naver.com" }
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/ppth0608/BPCircleActivityIndicator.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "UIKit"
end

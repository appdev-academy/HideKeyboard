Pod::Spec.new do |s|
  s.name             = "HideKeyboard"
  s.version          = "1.1.0"
  s.summary          = "Hide keyboard in iOS without extra hustle"
  s.homepage         = "https://github.com/appdev-academy/HideKeyboard"
  s.license          = 'MIT'
  s.author           = { "Maksym Skliarov" => "maksym@appdev.academy",
                         "Yura Voevodin" => "yura@appdev.academy" }
  s.source           = { :git => "https://github.com/appdev-academy/HideKeyboard.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/AppDev_Academy'
  
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  
  s.source_files = 'HideKeyboard/Classes/**/*'
  s.framework = 'UIKit'
  s.requires_arc = true
end
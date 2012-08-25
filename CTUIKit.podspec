Pod::Spec.new do |s|
  s.name         = "CTUIKit"
  s.version      = "0.0.1"
  s.summary      = "CAPH TECH's UIKit support classes."
  s.homepage     = "http://EXAMPLE/CTUIKit"
  s.license      = 'MIT'
  s.author       = { "Ryoichi Izumita" => "r.izumita@caph.jp" }
  s.source       = { :git => "https://github.com/rizumita/CTUIKit.git", :tag => "0.0.1" }
  s.platform     = :ios
  s.source_files = 'CTUIKit', 'CTUIKit/**/*.{h,m}'
  s.requires_arc = true
end

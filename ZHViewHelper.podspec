Pod::Spec.new do |s|
  s.name         = "ZHViewHelper"
  s.version      = "0.0.1"
  s.summary      = "iOS 界面搭建帮助类，包括Interface Builder中直接渲染圆角、阴影等效果 "
  s.homepage     = "https://github.com/xuzhenhao/ZHViewHelper"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "ZHViewHelper" => "632476744@qq.com" }
  s.platform     = :ios, '8.2'
  s.source       = { :git => "https://github.com/xuzhenhao/ZHViewHelper.git", tag: "#{s.version}" }
  s.source_files = "ZHViewHelper/Sources/**/*"
end

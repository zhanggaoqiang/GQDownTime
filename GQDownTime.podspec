
Pod::Spec.new do |s|

  s.name         = "GQDownTime"
  s.version      = "0.0.1"
  s.summary      = "短信倒计时验证码"
  s.description  = <<-DESC
                       短信倒计时封装
                   DESC
  s.homepage     = "https://github.com/zhanggaoqiang/GQDownTime"
  s.license      = "MIT"
  s.authors            = { "张高强" => "835389423@qq.com" }
  s.platform     = :ios,"9.0"
  s.source       = { :git => "https://github.com/zhanggaoqiang/GQDownTime.git", :tag => s.version }
  s.source_files  = 'GQDownTime/**/*.{h,m}'
  s.requires_arc = true
end

Pod::Spec.new do |s|

  s.name         = "CYBaseModule"
  s.version      = "0.0.1"
  s.summary      = "一些基本的视图结构"

  s.description  = <<-DESC
                   A longer description of CYBaseModule in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/uestc2704203019/CYBaseModule"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "chaiyuan" => "chaiyuan@ilongyuan.com.cn" }

  s.platform     = :ios, "5.0"
  s.requires_arc = true

  s.source       = { :git => "https://github.com/uestc2704203019/CYBaseModule.git",:tag => "0.0.1"}

  s.source_files  = "ReadME"

  s.subspec 'view' do |ss|
    ss.source_files = "view/*.{h,m}"
  end

  s.subspec 'model' do |ss|
    ss.source_files = "model/*.{h,m}"
    ss.subspec 'function' do |sss|
        sss.source_files = "model/function/*.{h,m}"
    end
  end

  s.subspec 'controller' do |ss|
    ss.source_files = "controller/*.{h,m}"
  end

  s.frameworks = 'UIKit'

end

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

  s.source       = { :git => "https://github.com/uestc2704203019/CYBaseModule.git",:commit=>"c622fbf72e505aa8ffa0264a08c7c36cc20251bd",:tag => "0.0.1"}

  s.source_files  = "view/*.{h.m}","controller/*.{h,m}","controller/*.{h,m}","view/**/*.{h.m}","controller/**/*.{h,m}","controller/**/*.{h,m}"

  s.frameworks = 'UIKit'  

end

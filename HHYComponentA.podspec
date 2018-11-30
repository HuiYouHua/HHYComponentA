
Pod::Spec.new do |s|

  # 项目名称
  s.name         = "HHYComponentA"
  # 项目版本号
  s.version      = "0.0.2"
  # 项目摘要
  s.summary      = "HHYComponentA"
  # 详细描述
  s.description  = "HHYComponentA远程仓库"
  # 仓库主页地址
  s.homepage     = "https://github.com/HuiYouHua/HHYComponentA"

  # 证书
  s.license      = { :type => "MIT", :file => "LICENSE" }

  # 作者名称邮箱地址
  s.author             = { "华惠友" => "793316968@qq.com" }

  # 平台版本号
  s.platform     = :ios, "8.0"

  # git源码地址
  s.source       = { :git => "https://github.com/HuiYouHua/HHYComponentA.git", :tag => "#{s.version}" }

  # 不分层的话就可以直接按照下面的写法
  # s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # s.exclude_files = "Classes/**/*.h"

  # 代码文件
  # 分层文件夹
	  s.subspec 'HHYComponentA' do |hhy|
      hhy.subspec 'Controller' do |c|
	     c.source_files = 'HHYComponentA/HHYComponentA/Controller/**/*.{h,m}'
	    # gcd.public_header_files = 'Classes/TimerHelper/GCD/**/*.h'
      # hhy.subspec 'CTMediaCategory' do |ctm|
      #  ctm.source_files = 'HHYComponentA/HHYComponentA/CTMediaCategory/**/*.{h,m}'
      #  # gcd.public_header_files = 'Classes/TimerHelper/GCD/**/*.h'
       end
    

 
      # hhy.subspec 'Target' do |t|
      #  t.source_files = 'HHYComponentA/HHYComponentA/Target/**/*.{h,m}'
      #  #tar.dependency "HHYComponentA/HHYComponentA/Controller"
      #  # gcd.public_header_files = 'Classes/TimerHelper/GCD/**/*.h'
      # end
  	


      
   
end


  #s.dependency "CTMediator", "~> 0.0.1"


end

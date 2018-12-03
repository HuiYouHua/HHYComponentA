
Pod::Spec.new do |s|

  # 项目名称
  s.name         = "HHYComponentA"
  # 项目版本号
  s.version      = "0.0.4"
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
  #s.default_subspec = 'HHYComponentA'
	s.subspec 'Controller' do |c|
	 	c.source_files = 'HHYComponentA/Controller/**/*.{h,m}'
		c.dependency "HHYComponentA/Model"
	end



	s.subspec 'Target' do |t|
		t.source_files = 'HHYComponentA/Target/**/*.{h,m}'
		t.dependency "HHYComponentA/Controller"
	end
  	
	s.subspec 'CTMediaCategory' do |ct|
      ct.source_files = "HHYComponentA/CTMediaCategory/**/*.{h,m}"
  	end

	s.subspec 'Model' do |m|
      m.source_files = "HHYComponentA/Model/**/*.{h,m}"
  	end
      

   s.dependency 'HHYCTMediator', '~> 0.0.3'
   s.requires_arc     = true



  #s.dependency "CTMediator", "~> 0.0.1"


end

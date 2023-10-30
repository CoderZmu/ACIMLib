

Pod::Spec.new do |s|
  s.name             = 'ACIMLib'
  s.version          = '1.2.5'
  s.summary          = 'IMLib SDK'
  s.description  = <<-DESC
                       IMLib SDK for iOS.
                      DESC

  s.homepage         = 'https://github.com/CoderZmu/ACIMLib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CoderZmu' => 'muz64034@gmail.com' }
  s.source           = { :git => 'https://github.com/CoderZmu/ACIMLib.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.platform     = :ios, "11.0"

  s.vendored_frameworks = 'ACIMLib.framework'
  s.source_files='ACIMLib.framework/Headers/**.h'
  s.public_header_files = 'ACIMLib.framework/Headers/**.h'
  s.dependency 'AliyunOSSiOS'
  s.dependency 'libwebp'


end

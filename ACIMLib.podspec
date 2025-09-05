Pod::Spec.new do |spec|
  spec.name         = "ACIMLib"
  spec.version      = "1.0.1"
  spec.summary      = "ACIMLib framework with dependencies"
  spec.description  = <<-DESC
                      ACIMLib is a dynamic framework that provides IM functionality.
                      It depends on GRDB, SwiftProtobuf, and AliyunOSSiOS frameworks.
                      DESC

  spec.homepage     = "https://github.com/CoderZmu/ACIMLib"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Zmu" => "muzxxx@gmail.com" }

  spec.platform     = :ios, "13.0"
  spec.ios.deployment_target = "13.0"

  spec.source       = { :git => "https://github.com/CoderZmu/ACIMLib.git", :tag => "#{spec.version}" }


  spec.vendored_frameworks = [
    "ACIMLib.xcframework",
    "GRDB.xcframework", 
    "SwiftProtobuf.xcframework",
    "AliyunOSSiOS.xcframework"
  ]


  spec.swift_version = "5.0"
  

  spec.requires_arc = true
  

  spec.frameworks = ['Foundation', 'UIKit', 'Security']
  
  spec.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
    'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES',
    'ENABLE_BITCODE' => 'NO'
  }
  
  spec.user_target_xcconfig = {
    'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES'
  }

end

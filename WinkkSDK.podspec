Pod::Spec.new do |s|
s.name         = "WinKKSDK"
s.version      = "0.0.7"
s.summary      = "WinKK SDK framework allows to integrate apps with Winkk Pass logon system"
s.description  = <<-DESC
WinKK SDK framework allows to integrate apps with Winkk Pass logon system
DESC
s.homepage     = "https://passport.winkk.com/partner/"
s.license = { :type => 'Copyright', :text => <<-LICENSE
Copyright 2019
LICENSE
}
s.author             = { "$(git config user.name)" => "admin@winkk.com" }
s.source       = { :git => "https://github.com/Winkk/SDKFramework-iOS", :tag => "#{s.version}" }
s.public_header_files = "WinkkSDK.framework/Headers/*.h"
s.source_files = "WinkkSDK.framework/Headers/*.h"
s.vendored_frameworks = "WinkkSDK.framework"
s.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }
s.platform = :ios
s.swift_version = "4.2"
s.ios.deployment_target  = '10.0'
end

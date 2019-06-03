#
# Be sure to run 'pod lib lint MoPub-Vungle-Adapters.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
s.name             = 'mo-d-adapter'
s.version          = '1.1.1.1'
s.summary          = 'Adapters for mediating through MoPub.'
s.description      = <<-DESC
Supported ad formats: Interstitial, Rewarded Video.\n
To download and integrate the Vungle SDK, please check this tutorial: https://dashboard.vungle.com/sdk.\n\n
For inquiries and support, please utilize the support page: https://support.vungle.com/hc/en-us/requests/new.\n
DESC
s.homepage         = 'https://github.com/mopub/mopub-ios-mediation'
s.license          = { :type => 'New BSD', :file => 'LICENSE' }
s.author           = { 'MoPub' => 'support@mopub.com' }
s.source           = { :git => 'https://github.com/dravyan/mopub-ios-mediation.git', :commit => '50963b3d1cf80d9b55f340b6da50a8bf1156d96c' }
s.ios.deployment_target = '8.0'
s.static_framework = true
s.source_files ='*.{h,m}'
s.subspec 'MoPub' do |ms|
  ms.dependency 'mopub-ios-sdk', '~> 5.5'
end
s.subspec 'Network' do |ns|
  ns.dependency 'VungleSDK-iOS', '6.3.2'
end
end

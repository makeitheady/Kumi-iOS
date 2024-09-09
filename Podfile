use_frameworks!
podspec :path => 'Kumi.podspec'


def shared_pods
	pod 'Kumi', :path => './'
	pod 'SwiftLint'
  pod 'Marker', :git => 'https://github.com/makeitheady/Marker.git', :branch => 'chore/swift-package'
end

target 'Kumi' do
  platform :ios, '12.0'
	shared_pods
end

target 'KumiTests' do
  platform :ios, '12.0'
	shared_pods
end

# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

workspace 'SNetwork'

xcodeproj 'SNetwork/SNetwork.xcodeproj'
xcodeproj 'SNetworkDemo/SNetworkDemo.xcodeproj'

def api_pods
   pod 'Alamofire', '~> 4.7' 
end

def client_pods
   pod 'Alamofire', '~> 4.7'
end

target 'SNetworkDemo' do
  xcodeproj 'SNetworkDemo/SNetworkDemo.xcodeproj'
  client_pods
end

target 'SNetworkDemoTests' do
  xcodeproj 'SNetworkDemo/SNetworkDemo.xcodeproj'
  client_pods
end

target 'SNetworkDemoUITests' do
  xcodeproj 'SNetworkDemo/SNetworkDemo.xcodeproj'
  client_pods
end

target 'SNetwork' do
  xcodeproj 'SNetwork/SNetwork.xcodeproj'
  api_pods
end

target 'SNetworkTests' do
  xcodeproj 'SNetwork/SNetwork.xcodeproj'
  api_pods
end

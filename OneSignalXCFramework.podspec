Pod::Spec.new do |s|
    s.name             = "OneSignalXCFramework"
    s.version          = "3.10.2"
    s.summary          = "OneSignal push notification library for mobile apps."
    s.homepage         = "https://onesignal.com"
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { "Joseph Kalash" => "joseph@onesignal.com", "Josh Kasten" => "josh@onesignal.com" , "Brad Hesse" => "brad@onesignal.com"}
    
    s.source           = { :git => "file:///Users/elliotmawby/Documents/GitHub/OneSignal-iOS-SDK" }
    s.platform         = :ios
    s.requires_arc     = true
    
    s.ios.vendored_frameworks = 'iOS_SDK/OneSignalSDK/OneSignal_XCFramework/OneSignal.xcframework'
    #s.preserve_paths = 'iOS_SDK/OneSignalSDK/OneSignal_XCFramework/OneSignal.xcframework'

    s.subspec 'OneSignalCore' do |ss|
      ss.vendored_frameworks = 'iOS_SDK/OneSignalSDK/OneSignal_Core/OneSignalCore.xcframework'
      #ss.preserve_paths = 'iOS_SDK/OneSignalSDK/OneSignal_Core/OneSignalCore.xcframework'
    end

    s.subspec 'OneSignalOutcomes' do |ss|
      ss.dependency 'OneSignalXCFramework/OneSignalCore'
      ss.vendored_frameworks = 'iOS_SDK/OneSignalSDK/OneSignal_Outcomes/OneSignalOutcomes.xcframework'
      #ss.preserve_paths = 'iOS_SDK/OneSignalSDK/OneSignal_Outcomes/OneSignalOutcomes.xcframework'
    end

    s.subspec 'OneSignalExtension' do |ss|
      ss.dependency 'OneSignalXCFramework/OneSignalCore'
      ss.dependency 'OneSignalXCFramework/OneSignalOutcomes'
      ss.vendored_frameworks = 'iOS_SDK/OneSignalSDK/OneSignal_Extension/OneSignalExtension.xcframework'
      #ss.preserve_paths = 'iOS_SDK/OneSignalSDK/OneSignal_Extension/OneSignalExtension.xcframework'
    end
  end
  
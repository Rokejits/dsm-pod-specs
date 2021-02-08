Pod::Spec.new do |s|
  s.name            = "SmartCardReader"
  s.version         = "2.0.0"
  s.summary         = "Library SmartCardReader (FEITIAN_MOBILE_READERS)"
  s.description     = "Library SmartCardReader (FEITIAN_MOBILE_READERS) for iOS"
  s.homepage        = "https://gitlab.com/mobilevas/VasReadCard_iOS.git"
  s.license         = { :type => 'MIT', :file => 'LICENSE' }
  s.author          = { "Siwaporn Deemongkol" => "Siwaporn_Dee@truecorp.co.th" }
  s.source          = { :git => "git@gitlab.com:mobilevas/VasReadCard_iOS.git", :tag => s.version.to_s }
  s.platform        = :ios, "9.0"

  s.source_files    = "ReadIDCard/SmartCardReader/**/*.*" 
  s.resources       = "ReadIDCard/SmartCardReader/modal/error.json"
  #s.public_header_files = "ReadIDCard/SmartCardReader/winscard.h","ReadIDCard/SmartCardReader/ft301u.h","ReadIDCard/SmartCardReader/ReaderInterface.h","ReadIDCard/SmartCardReader/VSCRManager.h" ,"ReadIDCard/SmartCardReader/VSCRExecuteCommand.h"
  s.frameworks      = "CoreBluetooth","ExternalAccessory"
  s.library         = "z"
  s.requires_arc    = true
  s.xcconfig = {
    'OTHER_LDFLAGS' => '-lc++',
    'OTHER_CFLAGS' => '-fembed-bitcode'
    
  }
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  s.subspec 'OpenLib' do |openlib|
      openlib.vendored_libraries = 'ReadIDCard/SmartCardReader/lib/libiRockey301_ccid_V3.5.16_Release.a'
      #openlib.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/libraries/libiRockey301/include/**" }
  end
end


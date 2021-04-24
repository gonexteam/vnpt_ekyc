#import "VnptEkycPlugin.h"
#if __has_include(<vnpt_ekyc/vnpt_ekyc-Swift.h>)
#import <vnpt_ekyc/vnpt_ekyc-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "vnpt_ekyc-Swift.h"
#endif

@implementation VnptEkycPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVnptEkycPlugin registerWithRegistrar:registrar];
}
@end

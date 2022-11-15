#import "MydeviceinfoPlugin.h"
#if __has_include(<mydeviceinfo/mydeviceinfo-Swift.h>)
#import <mydeviceinfo/mydeviceinfo-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mydeviceinfo-Swift.h"
#endif

@implementation MydeviceinfoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMydeviceinfoPlugin registerWithRegistrar:registrar];
}
@end

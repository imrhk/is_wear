#import "IsWearPlugin.h"
#if __has_include(<is_wear/is_wear-Swift.h>)
#import <is_wear/is_wear-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "is_wear-Swift.h"
#endif

@implementation IsWearPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIsWearPlugin registerWithRegistrar:registrar];
}
@end

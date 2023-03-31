#import "NativeIntentPlugin.h"
#if __has_include(<native_intent/native_intent-Swift.h>)
#import <native_intent/native_intent-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "native_intent-Swift.h"
#endif

@implementation NativeIntentPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativeIntentPlugin registerWithRegistrar:registrar];
}
@end

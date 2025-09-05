#import FlutterIntentPlusPlugin.h
#if __has_include(<intent_plus/intent_plus-Swift.h>)
#import <intent_plus/intent_plus-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "intent_plus-Swift.h"
#endif

@implementation FlutterIntentPlusPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterIntentForzzhPlugin registerWithRegistrar:registrar];
}
@end

#import "FlutterIntentForzzhPlugin.h"
#if __has_include(<flutter_intent_forzzh/flutter_intent_forzzh-Swift.h>)
#import <flutter_intent_forzzh/flutter_intent_forzzh-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_intent_forzzh-Swift.h"
#endif

@implementation FlutterIntentForzzhPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterIntentForzzhPlugin registerWithRegistrar:registrar];
}
@end

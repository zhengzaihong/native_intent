import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'intent_plus_platform_interface.dart';

/// An implementation of [IntentPlusPlatform] that uses method channels.
class MethodChannelIntentPlus extends IntentPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('intent_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

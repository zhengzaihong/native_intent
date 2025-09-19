import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'intent_plus_method_channel.dart';

abstract class IntentPlusPlatform extends PlatformInterface {
  /// Constructs a IntentPlusPlatform.
  IntentPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static IntentPlusPlatform _instance = MethodChannelIntentPlus();

  /// The default instance of [IntentPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelIntentPlus].
  static IntentPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IntentPlusPlatform] when
  /// they register themselves.
  static set instance(IntentPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

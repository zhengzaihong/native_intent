
import 'intent_plus_platform_interface.dart';

class IntentPlus {
  Future<String?> getPlatformVersion() {
    return IntentPlusPlatform.instance.getPlatformVersion();
  }
}

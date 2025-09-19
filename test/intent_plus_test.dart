import 'package:flutter_test/flutter_test.dart';
import 'package:intent_plus/intent_plus.dart';
import 'package:intent_plus/intent_plus_platform_interface.dart';
import 'package:intent_plus/intent_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockIntentPlusPlatform
    with MockPlatformInterfaceMixin
    implements IntentPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final IntentPlusPlatform initialPlatform = IntentPlusPlatform.instance;

  test('$MethodChannelIntentPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelIntentPlus>());
  });

  test('getPlatformVersion', () async {
    IntentPlus intentPlusPlugin = IntentPlus();
    MockIntentPlusPlatform fakePlatform = MockIntentPlusPlatform();
    IntentPlusPlatform.instance = fakePlatform;

    expect(await intentPlusPlugin.getPlatformVersion(), '42');
  });
}

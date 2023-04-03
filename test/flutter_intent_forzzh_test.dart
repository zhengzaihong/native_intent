import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_intent_forzzh/flutter_intent_forzzh.dart';
import 'package:flutter_intent_forzzh/flutter_intent_forzzh_platform_interface.dart';
import 'package:flutter_intent_forzzh/flutter_intent_forzzh_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterIntentForzzhPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterIntentForzzhPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterIntentForzzhPlatform initialPlatform = FlutterIntentForzzhPlatform.instance;

  test('$MethodChannelFlutterIntentForzzh is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterIntentForzzh>());
  });

  test('getPlatformVersion', () async {
    FlutterIntentForzzh flutterIntentForzzhPlugin = FlutterIntentForzzh();
    MockFlutterIntentForzzhPlatform fakePlatform = MockFlutterIntentForzzhPlatform();
    FlutterIntentForzzhPlatform.instance = fakePlatform;
  
    expect(await flutterIntentForzzhPlugin.getPlatformVersion(), '42');
  });
}

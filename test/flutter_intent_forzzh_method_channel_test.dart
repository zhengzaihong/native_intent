import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_intent_forzzh/flutter_intent_forzzh_method_channel.dart';

void main() {
  MethodChannelFlutterIntentForzzh platform = MethodChannelFlutterIntentForzzh();
  const MethodChannel channel = MethodChannel('flutter_intent_forzzh');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_intent_forzzh/android/android_flags.dart';
import 'package:flutter_intent_forzzh/android/android_intent.dart';
import 'package:flutter_intent_forzzh/android/android_settings.dart';

///通道名称
const String _channelName = 'flutter_native_intent';

///
/// create_user: zhengzaihong
/// email:1096877329@qq.com
/// create_date: 2023/3/31
/// create_time: 16:12
/// describe: 构建意图用于启动
/// android或ios 系统界面或者跳转三方app
///
class NativeIntent {

  const NativeIntent({
    this.action,
    this.flags,
    this.category,
    this.data,
    this.arguments,
    this.arrayArguments,
    this.package,
    this.componentName,
    this.type,
  })  : assert(action != null || data != null, 'action 或者 data 或者两者必须指定值'),

        _channel = const MethodChannel(_channelName);


  /// [AndroidIntent]
  /// See https://developer.android.com/reference/android/content/Intent.html#intent-structure.
  final String? action;


  /// [AndroidFlags]
  /// See https://developer.android.com/reference/android/content/Intent.html#setFlags(int).
  final List<int>? flags;

  /// See https://developer.android.com/reference/android/content/Intent.html#intent-structure.
  final String? category;

  /// See https://developer.android.com/reference/android/content/Intent.html#intent-structure.
  final String? data;

  /// See https://developer.android.com/reference/android/content/Intent.html#intent-structure.
  final Map<String, dynamic>? arguments;

  final Map<String, List<dynamic>>? arrayArguments;

  /// See https://developer.android.com/reference/android/content/Intent.html#setPackage(java.lang.String).
  final String? package;

  /// See https://developer.android.com/reference/android/content/Intent.html#setComponent(android.content.ComponentName).
  final String? componentName;
  final MethodChannel _channel;

  /// See https://developer.android.com/reference/android/content/Intent.html#intent-structure.
  final String? type;

  bool _isPowerOfTwo(int x) {
    return x != 0 && ((x & (x - 1)) == 0);
  }

  int convertFlags(List<int> flags) {
    var finalValue = 0;
    for (var i = 0; i < flags.length; i++) {
      if (!_isPowerOfTwo(flags[i])) {
        throw ArgumentError.value(flags[i], 'flag\'s value must be power of 2');
      }
      finalValue |= flags[i];
    }
    return finalValue;
  }

  /// android、ios的唤起方法
  /// 通知原生通过参数构建意图并启动
  Future<void> launch() async {
    await _channel.invokeMethod<void>('launch', _buildArguments());
  }

  ///主要提供给Android到 ，iOS还是触发launch函数
  Future<void> launchChooser(String title) async {
    if (!Platform.isAndroid) {
      launch();
      return;
    }

    final buildArguments = _buildArguments();
    buildArguments['chooserTitle'] = title;
    await _channel.invokeMethod<void>(
      'launchChooser',
      buildArguments,
    );
  }


  ///提供给Android使用
  Future<bool?> canResolveActivity() async {
    if (!Platform.isAndroid) {
      return false;
    }

    return await _channel.invokeMethod<bool>(
      'canResolveActivity',
      _buildArguments(),
    );
  }

  ///提供给原生构建意图的参数
  Map<String, dynamic> _buildArguments() {
    return {
      if (action != null) 'action': action,
      if (flags != null) 'flags': convertFlags(flags!),
      if (category != null) 'category': category,
      if (data != null) 'data': data,
      if (arguments != null) 'arguments': arguments,
      if (arrayArguments != null) 'arrayArguments': arrayArguments,
      if (package != null) ...{
        'package': package,
        if (componentName != null) 'componentName': componentName,
      },
      if (type != null) 'type': type,
    };
  }


  ///提供重启app的意图
  Future<bool> restartApp() async =>
      (await _channel.invokeMethod('restartApp',_buildArguments())) == "ok";
}

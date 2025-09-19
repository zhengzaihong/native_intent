import 'package:flutter/material.dart';
import 'package:intent_plus/native_intent_lib.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [

              FilledButton.tonal(
                  onPressed: () {
                    const NativeIntent(
                      action: "android.settings.APPLICATION_SETTINGS",
                      // action: Settings.ACTION_APP_SEARCH_SETTINGS,//没有的请手动 添加
                    ).launch().then((value){
                      debugPrint("---value: $value");
                    });
                  },
                  child: const Text("打开Android-无障碍设置")),

              FilledButton.tonal(
                  onPressed: () {
                    const NativeIntent(
                      action: AndroidIntent.ACTION_VIEW,
                      data: "taobao://s.click.taobao.com/NMJ5nJu",
                    ).launch();
                  },
                  child: const Text("Android启动淘宝")),

              FilledButton.tonal(
                  onPressed: () {
                    const NativeIntent(
                      action: AndroidIntent.ACTION_VIEW,
                      data: "taobao://s.click.taobao.com/NMJ5nJu",
                    ).launch();
                  },
                  child: const Text("Harmony")),

              FilledButton.tonal(
                  onPressed: () {
                    NativeIntent intent = const NativeIntent(
                      action: IOSIntent.APPSTORE, //跳转app store
                    );
                    intent.launch();
                  },
                  child: const Text("跳转ios应用商店")),
            ],
          ),
        ),
      ),
    );
  }
}

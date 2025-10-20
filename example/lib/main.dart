import 'package:flutter/material.dart';
import 'package:intent_plus/android/android_flags.dart';
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
                      action: AndroidAction.ACTION_DIAL,
                      data: 'tel:10086',
                      flags: [AndroidFlags.FLAG_ACTIVITY_NEW_TASK],
                    ).launch();
                  },
                  child: const Text("打开电话")),

              FilledButton.tonal(
                  onPressed: () {
                    const intent = NativeIntent(
                        action: AndroidAction.ACTION_VIEW,
                        flags: [AndroidFlags.FLAG_ACTIVITY_NEW_TASK],
                        package: 'com.taobao.taobao',
                    );
                    intent.launch().then((value){
                      debugPrint("---value: $value");
                    });
                  },
                  child: const Text("Android 包名启动淘宝")),

              FilledButton.tonal(
                  onPressed: () {
                    const NativeIntent(
                      action: AndroidAction.ACTION_VIEW,
                      data: "taobao://s.click.taobao.com/NMJ5nJu",
                    ).launch().then((value){
                      debugPrint("---value: $value");
                    });
                  },
                  child: const Text("Android 链接启动淘宝")),

              FilledButton.tonal(
                  onPressed: () {

                    const NativeIntent(
                      action: HarmonyAction.VIEW_DATA,
                      data: "taobao://s.click.taobao.com/NMJ5nJu",
                      type: "link"
                    ).launch();

                    //
                    // const NativeIntent(
                    //     package: "com.huawei.hmos.settings",
                    //     componentName: "com.huawei.hmos.settings.MainAbility",
                    //     data: "wifi_entry",
                    // ).launch();


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

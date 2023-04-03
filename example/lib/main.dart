import 'package:flutter/material.dart';
import 'package:flutter_intent_forzzh/native_intent_lib.dart';

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
        body:Center(
          child: Column(

            children: [

              buildButton("启动淘宝", (){
                String uri = "taobao://s.click.taobao.com/NMJ5nJu";
                NativeIntent intent = NativeIntent(
                  action: AndroidIntent.ACTION_VIEW,
                  data: uri,
                  // package: 'com.taobao.taobao'
                );
                intent.launch();


                // NativeIntent intent = const NativeIntent(
                //   action: Settings.ACTION_NFC_SETTINGS,//跳转系统NFC 设置
                // );
                // intent.launch();

              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(String title,Function function){

    return GestureDetector(
      onTap: (){
        function.call();
      },
      child:  Container(
        width: 200,
        height: 35,
        margin: const EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Text(title),
      ),
    );
  }

}

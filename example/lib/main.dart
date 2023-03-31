import 'package:flutter/material.dart';
import 'package:native_intent/android/android_intent.dart';
import 'package:native_intent/native_intent.dart';

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
  void initState() {
    super.initState();


  }


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


              buildButton("启动淘宝(安卓)", (){
                String uri = "taobao://s.click.taobao.com/NMJ5nJu";
                NativeIntent intent = NativeIntent(
                  action: AndroidIntent.ACTION_VIEW,
                  data: uri,
                  // package: 'com.taobao.taobao'
                );
                intent.launch();
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

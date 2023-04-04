import Flutter
import UIKit

let methodChannelName:String = "flutter_native_intent"

/**
* create_user: zhengzaihong
* email:1096877329@qq.com
* create_date: 2023/4/3
* create_time: 9:40
* describe: 此插件只支持ios 10.0以上。
*/
@available(iOS 10.0, *)
public class SwiftFlutterIntentForzzhPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: methodChannelName, binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterIntentForzzhPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

   public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {

       if let intent = call.arguments{

           let mapIntent = intent as! [String: Any]

           let action = mapIntent["action"]
           let flags = mapIntent["flags"]
           let category = mapIntent["category"]
           var url = mapIntent["data"]
           let type = mapIntent["type"]

           if call.method == "launch"{
               if let relUrl = url{
                   let url = URL(string:relUrl as! String)
                   if UIApplication.shared.canOpenURL(url!) {
                     UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                   } else {
                     /// 没安装使用浏览器打开相对应页面
                     UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                   }
               }
         }
       }
   }
  }
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
public class SwiftFlutterIntentPlusPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: methodChannelName, binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterIntentPlusPlugin()
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

           if call.method == "restartApp"{
              self.requestNotificationPermissions { granted in
                    if granted {
                      self.sendNotification()
                    }
                    //exit(0)
                  }
           }

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

               if action != nil{
                   if let url_action = URL(string: action as! String) {
                       if UIApplication.shared.canOpenURL(url_action) {
                           UIApplication.shared.open(url_action, options: [:], completionHandler: nil)
                       }
                   }
               }

         }
       }
   }

     /// Requests notification permissions.
     ///
     /// This function gets the current notification center and then requests alert notification
     /// permissions. If the permissions are granted, or if there's an error, it calls the given
     /// `completion` handler with the appropriate value.
     private func requestNotificationPermissions(completion: @escaping (Bool) -> Void) {
       let current = UNUserNotificationCenter.current()
       current.requestAuthorization(options: [.alert]) { granted, error in
         if let error = error {
           print("Error requesting notification permissions: \(error)")
           completion(false)
         } else {
           completion(granted)
         }
       }
     }

     /// Sends a notification.
     ///
     /// This function sets up the notification content and trigger, creates a notification request,
     /// and then adds the request to the notification center.
     private func sendNotification() {
       let content = UNMutableNotificationContent()
       content.title = "Tap to open the app!"
       content.sound = nil

       let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
       let request = UNNotificationRequest(identifier: "RestartApp", content: content, trigger: trigger)

       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
     }
 }

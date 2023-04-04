package com.zzh.intent.flutter_intent_forzzh

import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding

/**
 * create_user: zhengzaihong
 * email:1096877329@qq.com
 * create_date: 2023/3/31
 * create_time: 13:41
 * describe: 提供给Android的 intent,
 * ios 查看 ios目录下配置
 */

class FlutterIntentForzzhPlugin: FlutterPlugin, ActivityAware {

  private var launcher: IntentLauncher = IntentLauncher( /*activity=*/null,  /*applicationContext=*/null)
  private var impl: MethodCallHandlerImpl = MethodCallHandlerImpl(launcher)


  override fun onAttachedToEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    launcher.setApplicationContext(binding.applicationContext)
    launcher.setActivity(null)
    impl.startListening(binding.binaryMessenger)

  }


  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    launcher.setApplicationContext(null)
    launcher.setActivity(null)
    impl.stopListening()
  }


  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    launcher.setActivity(binding.activity)
  }

  override fun onDetachedFromActivity() {
    launcher.setActivity(null)
  }

  override fun onDetachedFromActivityForConfigChanges() {
    onDetachedFromActivity()
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    onAttachedToActivity(binding)
  }
}

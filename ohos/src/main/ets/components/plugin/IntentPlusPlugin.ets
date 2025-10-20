import {
  Any,
  FlutterPlugin,
  FlutterPluginBinding,
  MethodCall,
  MethodCallHandler,
  MethodChannel,
  MethodResult,
} from '@ohos/flutter_ohos';

import common from '@ohos.app.ability.common';
import Want from '@ohos.app.ability.Want';
import { BusinessError } from '@kit.BasicServicesKit';
import { appRecovery } from '@kit.AbilityKit';
import AbilityAware from '@ohos/flutter_ohos/src/main/ets/embedding/engine/plugins/ability/AbilityAware';
import {
  AbilityPluginBinding
} from '@ohos/flutter_ohos/src/main/ets/embedding/engine/plugins/ability/AbilityPluginBinding';

const TAG = '----IntentPlusPlugin'
/** IntentPlusPlugin **/
export default class IntentPlusPlugin implements FlutterPlugin, MethodCallHandler,AbilityAware {
  private channel: MethodChannel | null = null;
  private context: common.UIAbilityContext | null = null;


  constructor() {
  }

  getUniqueClassName(): string {
    return "IntentPlusPlugin"
  }


  onAttachedToAbility(binding: AbilityPluginBinding): void {
    console.debug(TAG, 'onAttachedToAbility ')
    this.context = binding.getAbility().context
  }

  onAttachedToEngine(binding: FlutterPluginBinding): void {
    this.channel = new MethodChannel(binding.getBinaryMessenger(), "flutter_native_intent");
    this.channel.setMethodCallHandler(this)
    console.debug(TAG, 'onAttachedToEngine ')
  }

  onDetachedFromAbility(): void {
    console.debug(TAG, 'onDetachedFromAbility ')
  }


  onDetachedFromEngine(binding: FlutterPluginBinding): void {
    if (this.channel != null) {
      this.channel.setMethodCallHandler(null)
    }
  }

  //0.失败
  //1.成功

  onMethodCall(call: MethodCall, result: MethodResult): void {
    console.info(`-----------MethodCall:${call.method}`);
    if (call.method == "getPlatformVersion") {
      result.success("OpenHarmony ^ ^ ")
    } else if (call.method == "restartApp") {
      // 触发应用重启
      appRecovery.restartApp();
    } else if (call.method == "launch") {
      // 解析传入的URI参数
      const targetUri: string = (call)?.argument("data") || '';
      const action: string = (call)?.argument("action") || '';
      const type: string = (call)?.argument("type") || '';
      const category: string = (call)?.argument("category") || '';
      const bundleName: string = call?.argument("package") || '';
      const componentName: string = call?.argument("componentName") || '';
      // // 对象类型
      const argument: Record<string, Any> = call?.argument("arguments") as Record<string, Any>;

      console.info(`-----------targetUri:${targetUri}`);
      console.info(`-----------action:${action}`);
      console.info(`-----------category:${category}`);
      console.info(`-----------bundleName:${bundleName}`);
      console.info(`-----------componentName:${componentName}`);
      console.info(`-----------argument:${argument}`);
      try {
        //示例：跳转到 WLAN 设置页 常用 uri 值：
        // wifi_entry（WLAN 页）
        // bluetooth_entry（蓝牙页）
        // location_manager_settings（位置页）1
        // volume_settings（声音和振动页）。
        // let want: Want = {
        //   bundleName: 'com.huawei.hmos.settings',
        //   abilityName: 'com.huawei.hmos.settings.MainAbility',
        //   uri: 'wifi_entry'
        // };

        if(type == "link"){
          this.context?.openLink(targetUri, { appLinkingOnly: true })
            .then(() => {
              result.success(true)
            })
            .catch((err: BusinessError) => {
              if (err.code === 16000019) {
                // 目标应用未安装或链接不合法,降级到浏览器打开
                this.context?.openLink(targetUri, { appLinkingOnly: false }).then(()=>{
                  result.success(true)
                })
              }
            });
        }else{

          let want: Want = {};
          if (bundleName != "" && componentName != "") {
            want = {
              deviceId: "", // 空表示本机
              bundleName: bundleName, // 目标应用包名
              abilityName: componentName, // 入口 Ability 名称
              parameters: argument,
              uri:targetUri
            }
          } else {
            want = {
              action: action, // 标准视图动作
              uri: targetUri, // 例如:"appScheme://xx.xx.com/path?key=value"
              entities: [category] // entity.system.browsable 明确拉起浏览器类应用
            }
          }
          // 执行应用拉起操作
          this.context?.startAbility(want).then(() => {
            console.info('---应用拉起成功');
            result.success("1")
          })?.catch((err: BusinessError) => {
            console.info(`---拉起失败，错误码: ${err.code}, 信息: ${err.message}`);
            result.success(false)
          });
        }

      } catch (error) {
        console.info(`---参数校验失败: ${(error as BusinessError).message}`);
        result.success(false)
      }
    } else {
      console.info(`方法未实现`);
      result.notImplemented()
    }
  }
}
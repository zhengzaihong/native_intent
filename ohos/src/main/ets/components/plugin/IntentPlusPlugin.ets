import {
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
    this.channel = new MethodChannel(binding.getBinaryMessenger(), "intent_plus");
    this.channel.setMethodCallHandler(this)
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
    } else if (call.method == "canOpenLink") {
      // const targetUri: string = call.parameters?.data || '';
      // // 检查是否可打开该链接
      // const canOpen = await bundleManager.canOpenLink(targetUri);
      // result.success(canOpen ? 1 : 0)
    } else if (call.method == "restartApp") {
      // 触发应用重启
      appRecovery.restartApp();
    } else if (call.method == "launch") {
      // 解析传入的URI参数
      // const targetUri: string = (call)?.data || '';
      // const action: string = (call)?.action || '';
      // const category: string = (call)?.category || '';
      // const flags: number = Number((call)?.flags) || null;
      // const package: string = (call)?.package || '';
      // const componentName: string = (call)?.componentName || '';
      // const type: string = (call)?.type || '';
      // // 对象类型
      // const arguments: Record<string, any> = (call)?.arguments as Record<string, any>;

      console.info('-----------222222');
      try {
        // let want: Want = {};
        // if (package != "" && componentName != "") {
        //   want = {
        //     deviceId: "", // 空表示本机
        //     bundleName: package, // 目标应用包名
        //     abilityName: componentName, // 入口 Ability 名称
        //     parameters: arguments
        //   }
        // } else {
        //   want = {
        //     action: action, // 标准视图动作
        //     uri: targetUri, // 例如:"appScheme://www.example.com/path?key=value"
        //     entities: [category] // 明确拉起浏览器类应用
        //   }
        // }
        console.info('-----------3333333');
        let want: Want = {
          action: "ohos.settings.ACTION_SETTINGS", // 标准视图动作
        }

        // 执行应用拉起操作
        this.context?.startAbility(want).then(() => {
          console.info('-----------4444444');
          console.info('应用拉起成功');
          result.success("1")
        })?.catch((err: BusinessError) => {
          console.info('-----------555555');
          console.error(`拉起失败，错误码: ${err.code}, 信息: ${err.message}`);
          result.success("0")
        });
      } catch (error) {
        console.info('-----------6666666');
        console.error(`参数校验失败: ${(error as BusinessError).message}`);
        result.success("0")
      }
    } else {
      console.info('-----------77777777');
      result.notImplemented()
    }
  }
}
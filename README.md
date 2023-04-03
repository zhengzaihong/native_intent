# native_intent

用于构建启动原生系统界面，或者跳转三方app的插件，如果是跳转三方应用请先确保你移动设备上装有该第三app

## Android 使用说明：

 1.AndroidManifest.xml 添加需要启动的包名配置

	<manifest xmlns:android="http://schemas.android.com/apk/res/android"
		package="com.zzh.intent.native_intent_example">
		
		.../
		<queries>
			<package android:name="com.taobao.taobao" />
		</queries>

	</manifest>

 2.启动通过 Scheme 启动

    NativeIntent intent = NativeIntent(
       action: AndroidIntent.ACTION_VIEW,
       data: "taobao://s.click.taobao.com/NMJ5nJu",
    );
        
    intent.launch();

 3.启动通过 AppId启动

    NativeIntent intent = NativeIntent(
      action: AndroidIntent.ACTION_VIEW,
      package: 'com.taobao.taobao'
    );
    intent.launch();


 4.如果是只跳转系统界面
  
    NativeIntent intent = const NativeIntent(
      action: Settings.ACTION_NFC_SETTINGS,//跳转系统NFC 设置
    );
    intent.launch();

## ios 使用说明（ios 需要10.0及以上版本）：

 1.[Info.plist] 添加Scheme 白名单

        <key>LSApplicationQueriesSchemes</key>
         <array>
            <!--  URL Scheme 白名单-->
            <string>taobao</string>
            <string>vipshop</string>
             xxxxxx
            <!--  URL Scheme 白名单-->
         </array>

 2.启动方式同上，传入到参数data必须是有效值，其他参数ios 暂未使用！

        var intent = NativeIntent(
        action: AndroidIntent.ACTION_VIEW, ///暂未使用
        data: "taobao://s.click.taobao.com/NMJ5nJu");
    
        intent.launch();
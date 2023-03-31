# native_intent

用于构建启动原生系统界面，或者跳转三方app的插件，请先确保你移动设备上装有该第三app

## Android 使用说明：

 1.AndroidManifest.xml 添加需要启动的包名配置

	<manifest xmlns:android="http://schemas.android.com/apk/res/android"
		package="com.zzh.intent.native_intent_example">
		
		.../
		<queries>
			<package android:name="com.taobao.taobao" />
		</queries>

	</manifest>

2. 启动通过 Scheme 启动

   NativeIntent intent = NativeIntent(
       action: AndroidIntent.ACTION_VIEW,
       data: "taobao://s.click.taobao.com/NMJ5nJu",
   );
   intent.launch();

3. 启动通过 AppId启动

   NativeIntent intent = NativeIntent(
      action: AndroidIntent.ACTION_VIEW,
      package: 'com.taobao.taobao'
   );
   intent.launch();
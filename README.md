# 🧭 intent_plus

[![Pub Version](https://img.shields.io/pub/v/intent_plus.svg)](https://pub.dev/packages/intent_plus)
[![license](https://img.shields.io/github/license/zhengzaihong/native_intent)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-Flutter-blue)](https://flutter.dev)
[![Supports](https://img.shields.io/badge/support-Android%20|%20iOS%20|%20Harmony-blueviolet)]()

一个轻量、易用的 Flutter 插件，用于启动 **原生系统界面（Android / iOS / Harmony）** 或 **跳转第三方 App**。

> ✨ 让你的 Flutter 应用自由穿梭于原生世界！

---

## 🚀 功能特性

- 🔗 支持通过 **Scheme** 启动第三方 App（如淘宝、微信、抖音等）
- ⚙️ 支持跳转 **系统设置页面**（如 Wi-Fi、NFC、蓝牙等）
- 📱 兼容 Android / iOS / Harmony 平台
- 💡 接口简洁，调用方式统一

---

## 🧩 安装

在 `pubspec.yaml` 中添加依赖：

```yaml
dependencies:
  intent_plus: latest    /// 旧版本：flutter_intent_forzzh:^0.0.2 
```

然后运行：

```bash
 flutter pub get
```

---

## 🧭 使用说明

### 📱 Android

#### 1. 在 `AndroidManifest.xml` 中添加要启动的包名

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.zzh.intent.native_intent_example">

    <queries>
        <package android:name="com.taobao.taobao" />
    </queries>
</manifest>
```

#### 2. 通过 Scheme 启动应用

```dart
NativeIntent intent = NativeIntent(
  action: AndroidAction.ACTION_VIEW,
  data: "taobao://s.click.taobao.com/NMJ5nJu",
);
intent.launch();
```

#### 3. 通过包名启动

```dart
NativeIntent intent = NativeIntent(
  action: AndroidAction.ACTION_VIEW,
  package: 'com.taobao.taobao',
);
intent.launch();
```

#### 4. 启动系统界面

```dart
NativeIntent intent = const NativeIntent(
  action: Settings.ACTION_NFC_SETTINGS,
);
intent.launch();
```

---

### 🍎 iOS（需 iOS 10.0+）

#### 1. 在 `Info.plist` 中添加白名单

```xml
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>taobao</string>
  <string>vipshop</string>
</array>
```

#### 2. 通过 Scheme 启动第三方 App

```dart
var intent = NativeIntent(
  data: "taobao://s.click.taobao.com/NMJ5nJu",
);
intent.launch();
```

#### 3. 启动系统界面

```dart
NativeIntent intent = const NativeIntent(
  action: IOSIntent.APPSTORE,
);
intent.launch();
```

---

### 🪶 HarmonyOS

#### 1. 配置 `module.json5`

```json
"module": {
  "querySchemes": [
    "taobao"
  ]
}
```

#### 2. 通过 Scheme 启动

```dart
const NativeIntent(
  action: HarmonyAction.VIEW_DATA,
  data: "taobao://s.click.taobao.com/NMJ5nJu",
  type: "link",
).launch();
```

#### 3. 通过包名启动

```dart
const NativeIntent(
  package: "com.huawei.hmos.settings",
  componentName: "com.huawei.hmos.settings.MainAbility",
  data: "wifi_entry",
).launch();
```

---

## 📘 License

[MIT License](LICENSE).


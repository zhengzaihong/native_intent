#include "include/flutter_intent_forzzh/flutter_intent_forzzh_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_intent_forzzh_plugin.h"

void FlutterIntentForzzhPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_intent_forzzh::FlutterIntentForzzhPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

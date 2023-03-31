#include "include/native_intent/native_intent_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "native_intent_plugin.h"

void NativeIntentPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  native_intent::NativeIntentPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

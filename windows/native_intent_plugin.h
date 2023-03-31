#ifndef FLUTTER_PLUGIN_NATIVE_INTENT_PLUGIN_H_
#define FLUTTER_PLUGIN_NATIVE_INTENT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace native_intent {

class NativeIntentPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  NativeIntentPlugin();

  virtual ~NativeIntentPlugin();

  // Disallow copy and assign.
  NativeIntentPlugin(const NativeIntentPlugin&) = delete;
  NativeIntentPlugin& operator=(const NativeIntentPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace native_intent

#endif  // FLUTTER_PLUGIN_NATIVE_INTENT_PLUGIN_H_

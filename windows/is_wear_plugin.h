#ifndef FLUTTER_PLUGIN_IS_WEAR_PLUGIN_H_
#define FLUTTER_PLUGIN_IS_WEAR_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace is_wear {

class IsWearPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  IsWearPlugin();

  virtual ~IsWearPlugin();

  // Disallow copy and assign.
  IsWearPlugin(const IsWearPlugin&) = delete;
  IsWearPlugin& operator=(const IsWearPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace is_wear

#endif  // FLUTTER_PLUGIN_IS_WEAR_PLUGIN_H_

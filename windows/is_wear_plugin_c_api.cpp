#include "include/is_wear/is_wear_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "is_wear_plugin.h"

void IsWearPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  is_wear::IsWearPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

#include "include/border_blur/border_blur_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "border_blur_plugin.h"

void BorderBlurPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  border_blur::BorderBlurPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

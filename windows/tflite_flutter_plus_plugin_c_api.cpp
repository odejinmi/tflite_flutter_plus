#include "include/tflite_flutter_plus/tflite_flutter_plus_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "tflite_flutter_plus_plugin.h"

void TfliteFlutterPlusPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  tflite_flutter_plus::TfliteFlutterPlusPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'is_wear_platform_interface.dart';

/// A web implementation of the IsWearPlatform of the IsWear plugin.
class IsWearWeb extends IsWearPlatform {
  /// Constructs a IsWearWeb
  IsWearWeb();

  static void registerWith(Registrar registrar) {
    IsWearPlatform.instance = IsWearWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<bool?> check() async {
    return Future.value(false);
  }
}

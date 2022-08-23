import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'is_wear_platform_interface.dart';

/// An implementation of [IsWearPlatform] that uses method channels.
class MethodChannelIsWear extends IsWearPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('is_wear');

  @override
  Future<bool?> check() async {
    return await methodChannel.invokeMethod<bool>('check');
  }
}

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'is_wear_method_channel.dart';

abstract class IsWearPlatform extends PlatformInterface {
  /// Constructs a IsWearPlatform.
  IsWearPlatform() : super(token: _token);

  static final Object _token = Object();

  static IsWearPlatform _instance = MethodChannelIsWear();

  /// The default instance of [IsWearPlatform] to use.
  ///
  /// Defaults to [MethodChannelIsWear].
  static IsWearPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IsWearPlatform] when
  /// they register themselves.
  static set instance(IsWearPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> check() async{
    throw UnimplementedError('check() has not been implemented.');
  }
}

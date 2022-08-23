import 'package:flutter_test/flutter_test.dart';
import 'package:is_wear/is_wear.dart';
import 'package:is_wear/is_wear_platform_interface.dart';
import 'package:is_wear/is_wear_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockIsWearPlatform 
    with MockPlatformInterfaceMixin
    implements IsWearPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final IsWearPlatform initialPlatform = IsWearPlatform.instance;

  test('$MethodChannelIsWear is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelIsWear>());
  });

  test('getPlatformVersion', () async {
    IsWear isWearPlugin = IsWear();
    MockIsWearPlatform fakePlatform = MockIsWearPlatform();
    IsWearPlatform.instance = fakePlatform;
  
    expect(await isWearPlugin.getPlatformVersion(), '42');
  });
}

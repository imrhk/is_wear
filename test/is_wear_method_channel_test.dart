import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:is_wear/is_wear_method_channel.dart';

void main() {
  MethodChannelIsWear platform = MethodChannelIsWear();
  const MethodChannel channel = MethodChannel('is_wear');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

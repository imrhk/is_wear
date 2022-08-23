
import 'is_wear_platform_interface.dart';

class IsWear {
  Future<bool?> check() {
    return IsWearPlatform.instance.check();
  }
}

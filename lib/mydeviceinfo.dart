
import 'mydeviceinfo_platform_interface.dart';

class Mydeviceinfo {
  Future<String?> getPlatformVersion() {
    return MydeviceinfoPlatform.instance.getPlatformVersion();
  }
}

import 'package:flutter/services.dart';

import 'mydeviceinfo_platform_interface.dart';

class Mydeviceinfo {
  static const MethodChannel _channel = MethodChannel('com/mydeviceinfo');

  Future<String?> getPlatformVersion() {
    return MydeviceinfoPlatform.instance.getPlatformVersion();
  }

  Future<String?> getMyDeviceInfo() async {
    try {
      final myDeviceInfo = await _channel.invokeMethod<String>('myDeviceInfo');

      return myDeviceInfo;
    } on PlatformException {
      return null;
    }
  }
}

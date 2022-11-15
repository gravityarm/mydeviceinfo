import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mydeviceinfo_platform_interface.dart';

/// An implementation of [MydeviceinfoPlatform] that uses method channels.
class MethodChannelMydeviceinfo extends MydeviceinfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mydeviceinfo');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

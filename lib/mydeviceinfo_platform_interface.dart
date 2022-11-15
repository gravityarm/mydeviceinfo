import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mydeviceinfo_method_channel.dart';

abstract class MydeviceinfoPlatform extends PlatformInterface {
  /// Constructs a MydeviceinfoPlatform.
  MydeviceinfoPlatform() : super(token: _token);

  static final Object _token = Object();

  static MydeviceinfoPlatform _instance = MethodChannelMydeviceinfo();

  /// The default instance of [MydeviceinfoPlatform] to use.
  ///
  /// Defaults to [MethodChannelMydeviceinfo].
  static MydeviceinfoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MydeviceinfoPlatform] when
  /// they register themselves.
  static set instance(MydeviceinfoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

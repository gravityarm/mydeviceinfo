import 'package:flutter_test/flutter_test.dart';
import 'package:mydeviceinfo/mydeviceinfo.dart';
import 'package:mydeviceinfo/mydeviceinfo_platform_interface.dart';
import 'package:mydeviceinfo/mydeviceinfo_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMydeviceinfoPlatform
    with MockPlatformInterfaceMixin
    implements MydeviceinfoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MydeviceinfoPlatform initialPlatform = MydeviceinfoPlatform.instance;

  test('$MethodChannelMydeviceinfo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMydeviceinfo>());
  });

  test('getPlatformVersion', () async {
    Mydeviceinfo mydeviceinfoPlugin = Mydeviceinfo();
    MockMydeviceinfoPlatform fakePlatform = MockMydeviceinfoPlatform();
    MydeviceinfoPlatform.instance = fakePlatform;

    expect(await mydeviceinfoPlugin.getPlatformVersion(), '42');
  });
}

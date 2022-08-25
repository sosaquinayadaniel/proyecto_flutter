import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/flutter_application_1.dart';
import 'package:flutter_application_1/flutter_application_1_platform_interface.dart';
import 'package:flutter_application_1/flutter_application_1_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterApplication_1Platform 
    with MockPlatformInterfaceMixin
    implements FlutterApplication_1Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterApplication_1Platform initialPlatform = FlutterApplication_1Platform.instance;

  test('$MethodChannelFlutterApplication_1 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterApplication_1>());
  });

  test('getPlatformVersion', () async {
    FlutterApplication_1 flutterApplication_1Plugin = FlutterApplication_1();
    MockFlutterApplication_1Platform fakePlatform = MockFlutterApplication_1Platform();
    FlutterApplication_1Platform.instance = fakePlatform;
  
    expect(await flutterApplication_1Plugin.getPlatformVersion(), '42');
  });
}

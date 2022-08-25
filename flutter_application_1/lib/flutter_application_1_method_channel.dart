import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_application_1_platform_interface.dart';

/// An implementation of [FlutterApplication_1Platform] that uses method channels.
class MethodChannelFlutterApplication_1 extends FlutterApplication_1Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_application_1');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

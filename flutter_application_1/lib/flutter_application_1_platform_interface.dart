import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_application_1_method_channel.dart';

abstract class FlutterApplication_1Platform extends PlatformInterface {
  /// Constructs a FlutterApplication_1Platform.
  FlutterApplication_1Platform() : super(token: _token);

  static final Object _token = Object();

  static FlutterApplication_1Platform _instance = MethodChannelFlutterApplication_1();

  /// The default instance of [FlutterApplication_1Platform] to use.
  ///
  /// Defaults to [MethodChannelFlutterApplication_1].
  static FlutterApplication_1Platform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterApplication_1Platform] when
  /// they register themselves.
  static set instance(FlutterApplication_1Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

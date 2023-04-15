import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'tflite_flutter_plus_method_channel.dart';

abstract class TfliteFlutterPlusPlatform extends PlatformInterface {
  /// Constructs a TfliteFlutterPlusPlatform.
  TfliteFlutterPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static TfliteFlutterPlusPlatform _instance = MethodChannelTfliteFlutterPlus();

  /// The default instance of [TfliteFlutterPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelTfliteFlutterPlus].
  static TfliteFlutterPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TfliteFlutterPlusPlatform] when
  /// they register themselves.
  static set instance(TfliteFlutterPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

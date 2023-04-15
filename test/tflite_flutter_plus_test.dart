import 'package:flutter_test/flutter_test.dart';
// import 'package:tflite_flutter_plus/tflite_flutter_plus.dart';
import 'package:tflite_flutter_plus/tflite_flutter_plus_platform_interface.dart';
// import 'package:tflite_flutter_plus/tflite_flutter_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTfliteFlutterPlusPlatform
    with MockPlatformInterfaceMixin
    implements TfliteFlutterPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  // final TfliteFlutterPlusPlatform initialPlatform = TfliteFlutterPlusPlatform.instance;

  // test('$MethodChannelTfliteFlutterPlus is the default instance', () {
  //   expect(initialPlatform, isInstanceOf<MethodChannelTfliteFlutterPlus>());
  // });
  //
  // test('getPlatformVersion', () async {
  //   TfliteFlutterPlus tfliteFlutterPlusPlugin = TfliteFlutterPlus();
  //   MockTfliteFlutterPlusPlatform fakePlatform = MockTfliteFlutterPlusPlatform();
  //   TfliteFlutterPlusPlatform.instance = fakePlatform;
  //
  //   expect(await tfliteFlutterPlusPlugin.getPlatformVersion(), '42');
  // });
}

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tflite_flutter_plus/tflite_flutter_plus_method_channel.dart';

void main() {
  MethodChannelTfliteFlutterPlus platform = MethodChannelTfliteFlutterPlus();
  const MethodChannel channel = MethodChannel('tflite_flutter_plus');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

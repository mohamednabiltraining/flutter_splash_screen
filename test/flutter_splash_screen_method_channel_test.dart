import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_splash_screen/flutter_splash_screen_method_channel.dart';

void main() {
  MethodChannelFlutterSplashScreen platform = MethodChannelFlutterSplashScreen();
  const MethodChannel channel = MethodChannel('flutter_splash_screen');

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

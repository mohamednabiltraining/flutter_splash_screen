import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_splash_screen_platform_interface.dart';

/// An implementation of [FlutterSplashScreenPlatform] that uses method channels.
class MethodChannelFlutterSplashScreen extends FlutterSplashScreenPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_splash_screen');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> hide() async {
    await methodChannel.invokeMethod('hide');
    return;
  }
}

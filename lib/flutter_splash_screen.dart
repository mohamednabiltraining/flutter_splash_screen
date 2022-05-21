import 'flutter_splash_screen_platform_interface.dart';

class FlutterSplashScreen {
  Future<String?> getPlatformVersion() {
    return FlutterSplashScreenPlatform.instance.getPlatformVersion();
  }

  ///hide splash screen
  static Future<void> hide() {
    return FlutterSplashScreenPlatform.instance.hide();
  }
}
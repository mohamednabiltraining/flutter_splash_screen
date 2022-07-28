import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_splash_screen_method_channel.dart';

abstract class FlutterSplashScreenPlatform extends PlatformInterface {
  /// Constructs a FlutterSplashScreenPlatform.
  FlutterSplashScreenPlatform() : super(token: _token);


  static final Object _token = Object();

  static FlutterSplashScreenPlatform _instance =
      MethodChannelFlutterSplashScreen();

  /// The default instance of [FlutterSplashScreenPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterSplashScreen].
  static FlutterSplashScreenPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterSplashScreenPlatform] when
  /// they register themselves.
  static set instance(FlutterSplashScreenPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> hide() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

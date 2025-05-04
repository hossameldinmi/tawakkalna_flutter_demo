import 'package:tawakkalna_intg/platform/platform_facade_io.dart'
    if (dart.library.html) 'platform_facade_web.dart';

abstract class PlatformUtilFacade {
  Future<dynamic> generateToken();
  Future<dynamic> getUserId();
}

class PlatformUtil {
  static final PlatformUtilFacade platformUtilFacade = PlatformUtilFacadeImpl();

  static Future<dynamic> generateToken() => platformUtilFacade.generateToken();
  static Future<dynamic> getUserId() => platformUtilFacade.getUserId();
}

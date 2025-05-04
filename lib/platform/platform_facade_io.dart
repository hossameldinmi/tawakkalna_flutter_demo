import 'package:tawakkalna_intg/platform/platform_util.dart';

class PlatformUtilFacadeImpl implements PlatformUtilFacade {
  @override
  Future<dynamic> getUserId() {
    return Future.value("1");
  }

  @override
  Future<dynamic> generateToken() {
    return Future.value("Token");
  }
}

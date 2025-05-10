import 'package:tawakkalna_intg/platform/platform_util.dart';

class PlatformUtilFacadeImpl implements PlatformUtilFacade {
  @override
  Future<String> getUserId() {
    return Future.value("1");
  }

  @override
  Future<String> generateToken() {
    return Future.value("Token");
  }
}

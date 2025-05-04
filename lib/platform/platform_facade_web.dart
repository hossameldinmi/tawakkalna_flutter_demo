// ignore_for_file: avoid_web_libraries_in_flutter
import 'package:tawakkalna_intg/platform/platform_util.dart';

import 'dart:js' as js;

class PlatformUtilFacadeImpl implements PlatformUtilFacade {
  @override
  Future<dynamic> generateToken() async {
    return js.context['TWK']!.callMethod('generateToken');
  }

  @override
  Future<dynamic> getUserId() {
    return js.context['TWK']!.callMethod('getUserId');
  }
}

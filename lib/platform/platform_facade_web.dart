// ignore_for_file: depend_on_referenced_packages, avoid_web_libraries_in_flutter

@JS()
library js_interop;

import 'dart:js_util' as js_util;
import 'package:js/js.dart';
import 'package:tawakkalna_intg/platform/platform_util.dart';

@JS()
external generateTokenJs();

@JS()
external getUserIdJs();

class PlatformUtilFacadeImpl implements PlatformUtilFacade {
  @override
  Future<dynamic> generateToken() async {
    try {
      final promise = generateTokenJs();
      print('promise');
      print(promise);
      final response = await js_util.promiseToFuture(promise);
      print('response');
      print(response);
      return response;
    } catch (e, st) {
      print(e);
      print(st);
      rethrow;
    }
  }

  @override
  Future<dynamic> getUserId() async {
    try {
      final request = getUserIdJs();
      final response = await js_util.promiseToFuture(request);
      print('response');
      print(response);
      return response;
    } catch (e, st) {
      print(e);
      print(st);
      rethrow;
    }
  }
}

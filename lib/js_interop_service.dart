@JS()
library js_interop;

import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';

@JS()
external _showAlert(String message);

@JS()
external _requestFullScreen();

@JS()
external _getData();

@JS()
external _getJsonData();

@JS()
external _generateTokenJs();

@JS()
external _shareImage(String url, String filename);

class JsInteropService {
  showAlert(String message) {
    _showAlert(message);
  }

  requestFullScreen() {
    _requestFullScreen();
  }

  getData() {
    final data = _getData();
    print(data);
  }

  getJsonData() {
    final data = _getJsonData();
    final decodedData = jsonDecode(data);
    print(decodedData['foo']);
  }

  Future<Map<String, dynamic>> getSomeAsyncData() async {
    final promise = await _generateTokenJs();
    final data = await promiseToFuture(promise);
    print(data);
    return json.decode(data);
  }

  shareImage(String url, String filename) async {
    final promise = await _shareImage(url, filename);
    final successResult = await promiseToFuture(promise);
    final success = successResult == "true";
    print(success);
  }
}

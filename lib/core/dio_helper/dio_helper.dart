import 'package:dio/dio.dart';

class DioHelper {
  // ignore: constant_identifier_names
  static const String _API_KEY = '28cced5aa09c415881631360640fa086';
  // ignore: constant_identifier_names
  static const String _BASE_URL =
      'https://api.openweathermap.org/data/2.5/weather?';

  static Dio _dio = Dio()..options.validateStatus = (v) => v! < 500;

  static Future<Response<dynamic>> post(String path, {dynamic data}) async =>
      await _dio.post(_BASE_URL + path + '&appid=' + _API_KEY, data: data);
  static Future<Response<dynamic>> get(String path) {
    final response = _dio.get(_BASE_URL + path + '&appid=' + _API_KEY);
    return response;
  }
}
/*
lat={lat}&lon={lon}

*/

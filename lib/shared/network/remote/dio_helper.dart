import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://127.0.0.1',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response?> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
    };
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response?> postData(
    {
      required String url,
      required Map<String, dynamic> data,

    }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
    };
    return await dio!.post(
      url,
      data: data,
    );
  }

  static Future<Response?> putData(
      {
        required String url,
        required Map<String, dynamic> data,
      }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
    };
    return await dio!.put(
      url,
      data: data,
    );
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


/// //////////////////////////////////////////////////////////////////////////
/// 기본 API 서비스 모델
/// //////////////////////////////////////////////////////////////////////////
class ApiServiceModel {

  late final Dio _dio;

  static final ApiServiceModel _instance = ApiServiceModel._internal();

  factory ApiServiceModel() {
    return _instance;
  }

  // headers가 있으면 Options를 추가하여 요청, headers가 없으면 Options 없이 요청
  // headers에는 accessToken, refreshToken, contentType 등이 들어감
  ApiServiceModel._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: dotenv.get("OCTOEV_BASE_URL"),
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 5),
      ),
    );
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// get
  /// //////////////////////////////////////////////////////////////////////////
  Future<Map<String, dynamic>> get({
    required String url,
    // String? token,
    Map<String, dynamic>? sendData,
    required Function(dynamic) errorHandler,
  }) async {
    try {
      final response = await _dio.get(
        url,
        data: sendData,
      );
      return response.data;
      // if(token == null) {
      //   final response = await _dio.get(
      //     url,
      //     data: sendData,
      //   );
      //   return response.data;
      // }
      // else {
      //   final response = await _dio.get(
      //     url,
      //     data: sendData,
      //     options: Options(
      //       headers: {
      //         "Content-Type" : "application/json",
      //         "Authorization" : "Bearer $token",
      //       },
      //     ),
      //   );
      //   return response.data;
      // }
    }
    catch (e) {
      errorHandler(e);
      rethrow;
    }
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// post
  /// //////////////////////////////////////////////////////////////////////////
  Future<Map<String, dynamic>> post({
    required String url,
    // String? token,
    required Map<String, dynamic> sendData,
    required Function(dynamic) errorHandler,
  }) async {
    try {
      final response = await _dio.post(
        url,
        data: sendData,
      );
      return response.data;
      // if (token == null) {
      //   final response = await _dio.get(
      //     url,
      //     data: sendData,
      //   );
      //   return response.data;
      // }
      // else {
      //   final response = await _dio.post(
      //     url,
      //     data: sendData,
      //     options: Options(
      //       headers: {
      //         "Content-Type" : "application/json",
      //         "Authorization" : "Bearer $token",
      //       },
      //     ),
      //   );
      //   return response.data;
      // }
    }
    catch (e) {
      errorHandler(e);
      rethrow;
    }
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// put
  /// //////////////////////////////////////////////////////////////////////////
  Future<Map<String, dynamic>> put({
    required String url,
    // String? token,
    required Map<String, dynamic> sendData,
    required Function(dynamic) errorHandler,
  }) async {
    try {
      final response = await _dio.put(
        url,
        data: sendData,
      );
      return response.data;
      // if (token == null) {
      //   final response = await _dio.get(
      //     url,
      //     data: sendData,
      //   );
      //   return response.data;
      // }
      // else {
      //   final response = await _dio.post(
      //     url,
      //     data: sendData,
      //     options: Options(
      //       headers: {
      //         "Content-Type" : "application/json",
      //         "Authorization" : "Bearer $token",
      //       },
      //     ),
      //   );
      //   return response.data;
      // }
    }
    catch (e) {
      errorHandler(e);
      rethrow;
    }
  }

}

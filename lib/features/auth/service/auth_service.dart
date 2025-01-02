import 'package:dio/dio.dart';
import 'package:handcar_ventor/core/service/base_url.dart';

class AuthService {
  static final Dio _dio = Dio(BaseOptions(
    baseUrl: baseUrl,
  ));

  static Future<Map<String, dynamic>> login({required String email, required String password}) async {
    try {
      final response = await _dio.post('/login', data: {
        'email': email,
        'password': password,
      });
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
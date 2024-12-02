import 'package:dio/dio.dart';
import 'package:handcar_ventor/core/service/base_url.dart';
import 'package:handcar_ventor/features/profile/controller/model/profile_model.dart';

class ProfileApiServices {
  static final Dio _dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    receiveDataWhenStatusError: true,
  ));

  static Future<ProfileModel> getProfile() async {
    try {
      final response = await _dio.get('/profile');
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
  static Future<Map<String, dynamic>> updateProfile({required String name,required String email,required String phone,required String whatsapp,required String password,required String location}) async {
    try {
      final response = await _dio.put('/profile', data: {
        'name': name,
        'email': email,
        'phone': phone ,
        'whatsapp': whatsapp,
        'password': password,
        'location': location
      });
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
import 'package:dio/dio.dart';
import 'package:handcar_ventor/core/service/base_url.dart';

class SubscriptionsApiService {

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
      )
  );

  Future<List<dynamic>> getSubscriptions() async {
    try {
      final response = await _dio.get('/subscriptions');
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
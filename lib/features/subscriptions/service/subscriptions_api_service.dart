import 'package:dio/dio.dart';
import 'package:handcar_ventor/core/service/base_url.dart';
import 'package:handcar_ventor/features/subscriptions/controller/model/subscriptions_model.dart';

class SubscriptionsApiService {

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
      )
  );

  Future<SubscriptionsModel> getSubscriptions() async {
    try {
      final response = await _dio.get('/subscriptions');
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
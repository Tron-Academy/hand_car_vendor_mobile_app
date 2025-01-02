import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:handcar_ventor/core/service/base_url.dart';
import 'package:handcar_ventor/features/services/model/service_model.dart';

class ServicesApiServices {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      validateStatus: (status) => status != null && status < 500, // Accept all status codes below 500
    ),
  );

  // get all services
Future<List<ServiceModel>> getService() async {
  try {
    final response = await dio.get('/view_services');
    if (response.statusCode == 200) {
      if (response.data is Map<String, dynamic> && response.data.containsKey('services')) {
        final serviceList = response.data['services'] as List<dynamic>;
        return serviceList.map((e) => ServiceModel.fromJson(e)).toList();
      } else {
        throw Exception('Unexpected response format');
      }
    } else {
      throw Exception('Failed to fetch services. Status code: ${response.statusCode}');
    }
  } catch (e) {
    rethrow;
  }
}

  // add service
  Future<Map<String, dynamic>> addService({
    required String serviceName,
    required String serviceCategory,
    required String serviceDetails,
    required double rate,
    required File image,
  }) async {
    try {
      final formData = FormData.fromMap({
        'Service_name': serviceName,
        'Service_category': serviceCategory,
        'Service_details': serviceDetails,
        'Rate': rate.toString(),
        'Image': await MultipartFile.fromFile(
          image.path,
          filename: 'service_image.jpg',
        ),
      });

      final response = await dio.post(
        '/services/add/', // Update this to match your backend route
        data: formData,
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data ?? {};
      } else {
        throw Exception('Failed to add service: ${response.statusMessage}');
      }
    } catch (e) {
      log('Error adding service: $e');
      throw Exception('Failed to add service: $e');
    }
  }

  // Adjust other methods similarly
  Future<ServiceModel> updateService({
    required String id,
    required String name,
    required String category,
    required String description,
    required double price,
    required List<String> imageUrls,
  }) async {
    try {
      final response = await dio.put(
        '/services/update/$id/', // Update this path
        data: {
          'serviceName': name,
          'serviceCategory': category,
          'serviceDetails': description,
          'rate': price,
          'imageUrl': imageUrls
        },
      );

      return ServiceModel.fromJson(response.data);
    } catch (e) {
      log('Error updating service: $e');
      throw Exception('Failed to update service: $e');
    }
  }

  Future<void> deleteService({required String id}) async {
    try {
      await dio.delete('/services/delete/$id/'); // Update this path
    } catch (e) {
      log('Error deleting service: $e');
      throw Exception('Failed to delete service: $e');
    }
  }
}
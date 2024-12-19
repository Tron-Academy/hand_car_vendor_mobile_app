import 'dart:io';

import 'package:dio/dio.dart';
import 'package:handcar_ventor/core/service/base_url.dart';
import 'package:handcar_ventor/features/services/model/service_model.dart';
import 'package:handcar_ventor/features/services/model/service_request_model.dart';

class ServicesApiServices {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
    ),
  );

  // get all services
  Future<List<ServiceModel>> getService() async {
    try {
      final response = await dio.get('/posts');
      return (response.data as List)
          .map((e) => ServiceModel.fromJson(e))
          .toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  // add service
  Future<ServiceModel> addService({
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
        'Image': await MultipartFile.fromFile(image.path),
      });

      final response = await dio.post(
        '/add_service',
        data: formData,
      );

      if (response.statusCode == 201) {
        return ServiceModel(
          id: response.data['service_id'],
          serviceName: serviceName,
          serviceCategory: serviceCategory,
          serviceDetails: serviceDetails,
          rate: rate,
          imageUrl: response.data['image_url'],
        );
      }
    
      throw Exception('Failed to add service');
  
    } catch (e) {
      throw Exception('Failed to add service: $e');
    }
  }

  // update service
  Future<ServiceModel> updateService(
      {required id,
      required name,
      required category,
      required description,
      required price,
      required imageUrls}) async {
    try {
      final response = await dio.put('/posts/$id',
          data: FormData.fromMap({
            'serviceName': name,
            'serviceCategory': category,
            'serviceDetails': description,
            'rate': price,
            'imageUrl': imageUrls
          }));
     
      return ServiceModel.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  // delete service
  Future<void> deleteService({required id}) async {
    try {
      await dio.delete('/posts/$id');
    } catch (e) {
      throw Exception(e);
    }
  }

  // get services request from user
  static Future<ServiceRequestModel> getServiceRequest(
      {required int id}) async {
    try {
      final response = await dio.get('/posts/$id');
      return ServiceRequestModel.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}

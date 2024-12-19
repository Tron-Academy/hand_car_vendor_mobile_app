import 'dart:io';

import 'package:dio/dio.dart';
import 'package:handcar_ventor/core/service/base_url.dart';
import 'package:handcar_ventor/features/services/model/service_model.dart';

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
  Future<Map<String, dynamic>> addService({
    required String serviceName,
    required String serviceCategory,
    required String serviceDetails,
    required double rate,
    required File image,
  }) async {
    try {
      // Create form data
      // final formData = FormData.fromMap({
      //   'Service_name': serviceName,
      //   'Service_category': serviceCategory,
      //   'Service_details': serviceDetails,
      //   'Rate': rate.toString(),
      //   'Image': await MultipartFile.fromFile(
      //     image.path,
      //     filename: 'service_image.jpg',
      //   ),
      // });
      // log('Form Data: ${formData.fields}');
      // Make API call
      final response = await dio.post(
        '/add_service', // Updated endpoint path
        data: FormData.fromMap({  // Use FormData instead of Map){
          "Service_name": serviceName,
          "Service_category":serviceCategory,
          "Service_details":serviceDetails,
          "Rate": rate.toString(),
          "Image": await MultipartFile.fromFile(
            image.path,
            filename: 'service_image.jpg',
          ),
        }),
        options: Options(
          headers: {
            'Accept': '*/*',
            'Content-Type': 'multipart/form-data',
            // Add any additional headers if needed
          },
          validateStatus: (status) {
            return status! < 500; // Accept all status codes less than 500
          },
        ),
      );

      if (response.statusCode == 201) {
        return response.data;
      } else {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          error: 'Failed to add service: ${response.statusMessage}',
        );
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw Exception(
            'Service endpoint not found. Please check the API URL.');
      }
      throw Exception('Failed to add service: ${e.message}');
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
}

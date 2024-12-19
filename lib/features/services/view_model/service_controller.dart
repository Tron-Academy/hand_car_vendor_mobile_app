import 'dart:io';

import 'package:handcar_ventor/features/services/model/service_model.dart';
import 'package:handcar_ventor/features/services/service/services_api_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_controller.g.dart';

@riverpod
class ServiceController extends _$ServiceController {
  @override
  Future<ServiceModel> build() async {
    //get services
    final response = await ServicesApiServices().getService();
    return response as ServiceModel;
  }

  //get services
  Future<void> getServices() async {
    try {
      await ServicesApiServices().getService();
    } catch (e) {
      throw Exception(e);
    }
  }

  //add service
  Future<void> addService({
    required String serviceName,
    required String serviceCategory,
    required String serviceDetails,
    required double rate,
    required File image,
  }) async {
    state = const AsyncValue.loading();
    try {
      final service = await ServicesApiServices().addService(
        serviceName: serviceName,
        serviceCategory: serviceCategory,
        serviceDetails: serviceDetails,
        rate: rate,
        image: image,
      );

      state = AsyncValue.data(service);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  //update service
  Future<ServiceModel> updateService(
      {required id,
      required name,
      required category,
      required description,
      required price,
      required imageUrls}) async {
    try {
      final response = await ServicesApiServices().updateService(
          id: id,
          name: name,
          category: category,
          description: description,
          price: price,
          imageUrls: imageUrls);
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  //delete service
  Future<void> deleteService({required id}) async {
    try {
      await ServicesApiServices().deleteService(id: id);
    } catch (e) {
      throw Exception(e);
    }
  }
}

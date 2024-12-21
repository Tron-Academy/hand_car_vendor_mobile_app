import 'dart:developer';
import 'dart:io';

import 'package:handcar_ventor/features/services/model/service_model.dart';
import 'package:handcar_ventor/features/services/service/services_api_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_controller.g.dart';

@riverpod
class ServiceController extends _$ServiceController {
  late final ServicesApiServices _apiServices;

  @override
  Future<ServiceModel?> build() async {
    _apiServices = ServicesApiServices();
    return _fetchInitialService();
  }

  Future<ServiceModel?> _fetchInitialService() async {
    try {
      final services = await _apiServices.getService();
      return services.isNotEmpty ? services.first : null;
    } catch (error) {
      log('Error fetching initial service: $error');
      throw error;
    }
  }

  /// Fetch all services
  Future<List<ServiceModel>> fetchServices() async {
    try {
      final services = await _apiServices.getService();
      return services;
    } catch (error) {
      log('Error fetching services: $error');
      throw error;
    }
  }

  /// Add a new service
  Future<void> addService({
    required String serviceName,
    required String serviceCategory,
    required String serviceDetails,
    required double rate,
    required File image,
  }) async {
    try {
      state = const AsyncLoading();
      await _apiServices.addService(
        serviceName: serviceName,
        serviceCategory: serviceCategory,
        serviceDetails: serviceDetails,
        rate: rate,
        image: image,
      );

      log('Service added successfully: $serviceName');
      final updatedService = await _fetchInitialService();
      state = AsyncData(updatedService);
    } catch (error, stackTrace) {
      log('Error adding service "$serviceName": $error');
      state = AsyncError(error, stackTrace);
    }
  }

  /// Update an existing service
  Future<void> updateService({
    required String id,
    required String name,
    required String category,
    required String description,
    required double price,
    required List<String> imageUrls,
  }) async {
    try {
      state = const AsyncLoading();
      await _apiServices.updateService(
        id: id,
        name: name,
        category: category,
        description: description,
        price: price,
        imageUrls: imageUrls,
      );

      log('Service updated successfully: $id');
      final updatedService = await _fetchInitialService();
      state = AsyncData(updatedService);
    } catch (error, stackTrace) {
      log('Error updating service "$id": $error');
      state = AsyncError(error, stackTrace);
    }
  }

  /// Delete a service
  Future<void> deleteService({required String id}) async {
    try {
      state = const AsyncLoading();
      await _apiServices.deleteService(id: id);

      log('Service deleted successfully: $id');
      final updatedService = await _fetchInitialService();
      state = AsyncData(updatedService);
    } catch (error, stackTrace) {
      log('Error deleting service "$id": $error');
      state = AsyncError(error, stackTrace);
    }
  }
}
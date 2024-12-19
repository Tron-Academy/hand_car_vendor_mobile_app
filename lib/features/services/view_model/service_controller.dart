import 'dart:developer';
import 'dart:io';

import 'package:handcar_ventor/features/services/model/service_model.dart';
import 'package:handcar_ventor/features/services/service/services_api_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_controller.g.dart';

@riverpod
class ServiceController extends _$ServiceController {
  @override
  FutureOr<ServiceModel?> build() async {
    return null; // Default null value
  }

  // Get all services
 Future<void> getServices() async {
  try {
    state = const AsyncValue.loading();
    final response = await ServicesApiServices().getService();
  state = AsyncValue<List<ServiceModel>>.data(response) as AsyncValue<ServiceModel?>;
  } catch (error, stackTrace) {
    log('Error fetching services: $error', error: error, );
    state = AsyncValue.error(error, stackTrace);
  } finally {
    // Notify UI about the end of loading state (optional)
  }
}

  // Add a new service
  Future<void> addService({
    required String serviceName,
    required String serviceCategory,
    required String serviceDetails,
    required double rate,
    required File image,
  }) async {
    try {
      state = const AsyncValue.loading();

      await ServicesApiServices().addService(
        serviceName: serviceName,
        serviceCategory: serviceCategory,
        serviceDetails: serviceDetails,
        rate: rate,
        image: image,
      );

      log('Service added successfully: $serviceName');
      await getServices(); // Refresh list
    } catch (error, stackTrace) {
      log('Error adding service "$serviceName": $error');
      state = AsyncValue.error(error, stackTrace);
    }
  }

  // Update an existing service
  Future<void> updateService({
    required String id,
    required String name,
    required String category,
    required String description,
    required double price,
    required List<String> imageUrls,
  }) async {
    try {
      state = const AsyncValue.loading();

      await ServicesApiServices().updateService(
        id: id,
        name: name,
        category: category,
        description: description,
        price: price,
        imageUrls: imageUrls,
      );

      log('Service updated successfully: $id');
      await getServices(); // Refresh list
    } catch (error, stackTrace) {
      log('Error updating service "$id": $error');
      state = AsyncValue.error(error, stackTrace);
    }
  }

  // Delete a service
  Future<void> deleteService({required String id}) async {
    try {
      state = const AsyncValue.loading();

      await ServicesApiServices().deleteService(id: id);

      log('Service deleted successfully: $id');
      await getServices(); // Refresh list
    } catch (error, stackTrace) {
      log('Error deleting service "$id": $error');
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
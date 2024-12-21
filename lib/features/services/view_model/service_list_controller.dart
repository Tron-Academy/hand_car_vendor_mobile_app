import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:handcar_ventor/features/services/model/service_model.dart';
import 'package:handcar_ventor/features/services/service/services_api_services.dart';

part 'service_list_controller.g.dart';

@riverpod
class ServiceListController extends _$ServiceListController {
  @override
  Future<List<ServiceModel>> build() async {
    return _fetchServices();
  }

  Future<List<ServiceModel>> _fetchServices() async {
    final apiServices = ServicesApiServices();
    return apiServices.getService();
  }
}
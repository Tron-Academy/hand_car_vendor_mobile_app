
import 'package:handcar_ventor/features/services/controller/model/add_service_model.dart';
import 'package:handcar_ventor/features/services/service/services_api_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_service_controller.g.dart';

@riverpod
class AddServiceController extends _$AddServiceController {
  @override
  Future<AddServiceModel>build()async{
    final response = await ServicesApiServices().getService();
   return response as AddServiceModel;
  }
  Future<void>getServices()async{
    try{
      await ServicesApiServices().getService();
    }catch(e){
      throw Exception(e);
    }
  }
}
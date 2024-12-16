import 'package:dio/dio.dart';
import 'package:handcar_ventor/core/service/base_url.dart';
import 'package:handcar_ventor/features/services/controller/model/service_model.dart';
import 'package:handcar_ventor/features/services/controller/model/service_request_model.dart';

class ServicesApiServices {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
    ),
  );

 // get all services
  Future<List<ServiceModel>>getService()async{
   try{
     final response = await dio.get('/posts');
     return (response.data as List).map((e) => ServiceModel.fromJson(e)).toList();
   }catch(e){
     throw Exception(e);
   }
  }
  // add service
   static Future<ServiceModel>addService({required serviceName,required serviceCategory,required serviceDetails,required rate,required imageUrl})async{
   try{
     final response = await dio.post('/posts',data: FormData.fromMap({
       'serviceName':serviceName,
       'serviceCategory':serviceCategory,
       'serviceDetails':serviceDetails,
       'rate':rate,
       'imageUrl':imageUrl
     }));
     return ServiceModel.fromJson(response.data);
   }catch(e){
     throw Exception(e);
   }
  }
  // update service
  Future<ServiceModel>updateService({required id,required name,required category,required description,required price,required imageUrls})async{
   try{
     final response = await dio.put('/posts/$id',data: FormData.fromMap({
       'name':name,
       'category':category,
       'description':description,
       'price':price,
       'imageUrls':imageUrls
     }));
     return ServiceModel.fromJson(response.data);
   }catch(e){
     throw Exception(e);
   }

  }

  // delete service
  Future<void>deleteService({required id})async{
   try{
     await dio.delete('/posts/$id');
   }catch(e){
     throw Exception(e);
   }
  }
  // get services request from user
 static Future<ServiceRequestModel>getServiceRequest({required int id})async{
   try{
     final response = await dio.get('/posts/$id');
     return ServiceRequestModel.fromJson(response.data);
   }catch(e){
     throw Exception(e);
   }

   
  }

}
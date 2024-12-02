import 'package:dio/dio.dart';
import 'package:handcar_ventor/core/service/base_url.dart';
import 'package:handcar_ventor/features/services/controller/model/service_model.dart';

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
  Future<ServiceModel>addService({required name,required category,required description,required price,required imageUrls})async{
   try{
     final response = await dio.post('/posts',data: FormData.fromMap({
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

}
import 'package:dio/dio.dart';
import 'package:handcar_ventor/features/services/controller/model/add_service_model.dart';

class ServicesApiServices {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
    ),
  );

  Future<List<AddServiceModel>>getService()async{
   try{
     final response = await dio.get('/posts');
     return (response.data as List).map((e) => AddServiceModel.fromJson(e)).toList();
   }catch(e){
     throw Exception(e);
   }
  }
}
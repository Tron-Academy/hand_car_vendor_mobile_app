// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddServiceModelImpl _$$AddServiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddServiceModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AddServiceModelImplToJson(
        _$AddServiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'description': instance.description,
      'price': instance.price,
      'imageUrls': instance.imageUrls,
    };

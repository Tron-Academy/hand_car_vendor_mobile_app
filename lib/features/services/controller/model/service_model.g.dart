// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceModelImpl _$$ServiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ServiceModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ServiceModelImplToJson(_$ServiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'description': instance.description,
      'price': instance.price,
      'imageUrls': instance.imageUrls,
    };

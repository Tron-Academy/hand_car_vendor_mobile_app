// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceRequestModelImpl _$$ServiceRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceRequestModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      serviceName: json['serviceName'] as String,
      phone: json['phone'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$ServiceRequestModelImplToJson(
        _$ServiceRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'serviceName': instance.serviceName,
      'phone': instance.phone,
      'price': instance.price,
    };

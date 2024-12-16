// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceModelImpl _$$ServiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ServiceModelImpl(
      id: (json['id'] as num?)?.toInt(),
      serviceName: json['serviceName'] as String,
      serviceCategory: json['serviceCategory'] as String,
      serviceDetails: json['serviceDetails'] as String,
      rate: (json['rate'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$ServiceModelImplToJson(_$ServiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceName': instance.serviceName,
      'serviceCategory': instance.serviceCategory,
      'serviceDetails': instance.serviceDetails,
      'rate': instance.rate,
      'imageUrl': instance.imageUrl,
    };

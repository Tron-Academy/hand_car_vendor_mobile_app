// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      whatsapp: json['whatsapp'] as String,
      password: json['password'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'whatsapp': instance.whatsapp,
      'password': instance.password,
      'location': instance.location,
    };

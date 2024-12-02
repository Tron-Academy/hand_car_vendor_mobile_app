// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscriptions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionsModelImpl _$$SubscriptionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionsModelImpl(
      id: json['id'] as String,
      userName: json['userName'] as String,
      planeName: json['planeName'] as String,
      planType: json['planType'] as String,
      planDuration: json['planDuration'] as String,
      price: json['price'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$SubscriptionsModelImplToJson(
        _$SubscriptionsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'planeName': instance.planeName,
      'planType': instance.planType,
      'planDuration': instance.planDuration,
      'price': instance.price,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'status': instance.status,
    };

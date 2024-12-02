import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscriptions_model.freezed.dart';
part 'subscriptions_model.g.dart';

@freezed
class SubscriptionsModel with _$SubscriptionsModel {
  const factory SubscriptionsModel({
    required String id,
    required String userName,
    required String planeName,
    required String planType,
    required String planDuration,
    required String price,
    required String startDate,
    required String endDate,
    required String status,
  }) = _SubscriptionsModel;

  factory SubscriptionsModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionsModelFromJson(json);
}

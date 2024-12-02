import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_request_model.freezed.dart';
part 'service_request_model.g.dart';

@freezed
class ServiceRequestModel with _$ServiceRequestModel {
  const factory ServiceRequestModel({
    required String id,
    required String name,
    required String serviceName,
    required String phone,
    required double price,
  }) = _ServiceRequestModel;

  factory ServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestModelFromJson(json);
}

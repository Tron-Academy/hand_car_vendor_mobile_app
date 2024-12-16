import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';


@freezed
class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    int? id,
    required String serviceName,
    required String serviceCategory,
    required String serviceDetails,
    required double rate,
    String? imageUrl,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, Object?> json) 
      => _$ServiceModelFromJson(json);
}
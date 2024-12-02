import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';
// Required for JSON serialization/deserialization

@freezed
//Add service Model
class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    required String id,
    required String name,
    required String category,
    required String description,
    required double price,
    required List<String> imageUrls,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json); // This function is auto-generated
}

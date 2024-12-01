import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_service_model.freezed.dart';
part 'add_service_model.g.dart';
// Required for JSON serialization/deserialization

@freezed
//Add service Model
class AddServiceModel with _$AddServiceModel {
  const factory AddServiceModel({
    required String id,
    required String name,
    required String category,
    required String description,
    required double price,
    required List<String> imageUrls,
  }) = _AddServiceModel;

  factory AddServiceModel.fromJson(Map<String, dynamic> json) =>
      _$AddServiceModelFromJson(json); // This function is auto-generated
}

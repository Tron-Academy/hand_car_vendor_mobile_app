import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:handcar_ventor/features/services/model/service_model.dart';
part 'service_state.freezed.dart';

@freezed
class ServiceState with _$ServiceState {
  const factory ServiceState.initial() = _Initial;
  const factory ServiceState.loading() = _Loading;
  const factory ServiceState.success(ServiceModel service) = _Success;
  const factory ServiceState.error(String message) = _Error;
}
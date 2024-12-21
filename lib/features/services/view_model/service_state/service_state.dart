import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:handcar_ventor/features/services/model/service_model.dart';

part 'service_state.freezed.dart';

@freezed
class ServiceState with _$ServiceState {
  const factory ServiceState.initial() = _InitialServiceState;
  const factory ServiceState.loading() = _LoadingServiceState;
  const factory ServiceState.data(List<ServiceModel> services) = _DataServiceState;
  const factory ServiceState.error(String error) = _ErrorServiceState;
}
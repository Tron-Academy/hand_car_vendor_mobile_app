// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceRequestModel _$ServiceRequestModelFromJson(Map<String, dynamic> json) {
  return _ServiceRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceRequestModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// Serializes this ServiceRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceRequestModelCopyWith<ServiceRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestModelCopyWith<$Res> {
  factory $ServiceRequestModelCopyWith(
          ServiceRequestModel value, $Res Function(ServiceRequestModel) then) =
      _$ServiceRequestModelCopyWithImpl<$Res, ServiceRequestModel>;
  @useResult
  $Res call(
      {String id, String name, String serviceName, String phone, double price});
}

/// @nodoc
class _$ServiceRequestModelCopyWithImpl<$Res, $Val extends ServiceRequestModel>
    implements $ServiceRequestModelCopyWith<$Res> {
  _$ServiceRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? serviceName = null,
    Object? phone = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceRequestModelImplCopyWith<$Res>
    implements $ServiceRequestModelCopyWith<$Res> {
  factory _$$ServiceRequestModelImplCopyWith(_$ServiceRequestModelImpl value,
          $Res Function(_$ServiceRequestModelImpl) then) =
      __$$ServiceRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String serviceName, String phone, double price});
}

/// @nodoc
class __$$ServiceRequestModelImplCopyWithImpl<$Res>
    extends _$ServiceRequestModelCopyWithImpl<$Res, _$ServiceRequestModelImpl>
    implements _$$ServiceRequestModelImplCopyWith<$Res> {
  __$$ServiceRequestModelImplCopyWithImpl(_$ServiceRequestModelImpl _value,
      $Res Function(_$ServiceRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? serviceName = null,
    Object? phone = null,
    Object? price = null,
  }) {
    return _then(_$ServiceRequestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceRequestModelImpl implements _ServiceRequestModel {
  const _$ServiceRequestModelImpl(
      {required this.id,
      required this.name,
      required this.serviceName,
      required this.phone,
      required this.price});

  factory _$ServiceRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceRequestModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String serviceName;
  @override
  final String phone;
  @override
  final double price;

  @override
  String toString() {
    return 'ServiceRequestModel(id: $id, name: $name, serviceName: $serviceName, phone: $phone, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, serviceName, phone, price);

  /// Create a copy of ServiceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceRequestModelImplCopyWith<_$ServiceRequestModelImpl> get copyWith =>
      __$$ServiceRequestModelImplCopyWithImpl<_$ServiceRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceRequestModel implements ServiceRequestModel {
  const factory _ServiceRequestModel(
      {required final String id,
      required final String name,
      required final String serviceName,
      required final String phone,
      required final double price}) = _$ServiceRequestModelImpl;

  factory _ServiceRequestModel.fromJson(Map<String, dynamic> json) =
      _$ServiceRequestModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get serviceName;
  @override
  String get phone;
  @override
  double get price;

  /// Create a copy of ServiceRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceRequestModelImplCopyWith<_$ServiceRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

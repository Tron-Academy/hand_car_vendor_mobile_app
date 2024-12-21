// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ServiceModel> services) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ServiceModel> services)? data,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ServiceModel> services)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialServiceState value) initial,
    required TResult Function(_LoadingServiceState value) loading,
    required TResult Function(_DataServiceState value) data,
    required TResult Function(_ErrorServiceState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialServiceState value)? initial,
    TResult? Function(_LoadingServiceState value)? loading,
    TResult? Function(_DataServiceState value)? data,
    TResult? Function(_ErrorServiceState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialServiceState value)? initial,
    TResult Function(_LoadingServiceState value)? loading,
    TResult Function(_DataServiceState value)? data,
    TResult Function(_ErrorServiceState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceStateCopyWith<$Res> {
  factory $ServiceStateCopyWith(
          ServiceState value, $Res Function(ServiceState) then) =
      _$ServiceStateCopyWithImpl<$Res, ServiceState>;
}

/// @nodoc
class _$ServiceStateCopyWithImpl<$Res, $Val extends ServiceState>
    implements $ServiceStateCopyWith<$Res> {
  _$ServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialServiceStateImplCopyWith<$Res> {
  factory _$$InitialServiceStateImplCopyWith(_$InitialServiceStateImpl value,
          $Res Function(_$InitialServiceStateImpl) then) =
      __$$InitialServiceStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialServiceStateImplCopyWithImpl<$Res>
    extends _$ServiceStateCopyWithImpl<$Res, _$InitialServiceStateImpl>
    implements _$$InitialServiceStateImplCopyWith<$Res> {
  __$$InitialServiceStateImplCopyWithImpl(_$InitialServiceStateImpl _value,
      $Res Function(_$InitialServiceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialServiceStateImpl implements _InitialServiceState {
  const _$InitialServiceStateImpl();

  @override
  String toString() {
    return 'ServiceState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialServiceStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ServiceModel> services) data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ServiceModel> services)? data,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ServiceModel> services)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialServiceState value) initial,
    required TResult Function(_LoadingServiceState value) loading,
    required TResult Function(_DataServiceState value) data,
    required TResult Function(_ErrorServiceState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialServiceState value)? initial,
    TResult? Function(_LoadingServiceState value)? loading,
    TResult? Function(_DataServiceState value)? data,
    TResult? Function(_ErrorServiceState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialServiceState value)? initial,
    TResult Function(_LoadingServiceState value)? loading,
    TResult Function(_DataServiceState value)? data,
    TResult Function(_ErrorServiceState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialServiceState implements ServiceState {
  const factory _InitialServiceState() = _$InitialServiceStateImpl;
}

/// @nodoc
abstract class _$$LoadingServiceStateImplCopyWith<$Res> {
  factory _$$LoadingServiceStateImplCopyWith(_$LoadingServiceStateImpl value,
          $Res Function(_$LoadingServiceStateImpl) then) =
      __$$LoadingServiceStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingServiceStateImplCopyWithImpl<$Res>
    extends _$ServiceStateCopyWithImpl<$Res, _$LoadingServiceStateImpl>
    implements _$$LoadingServiceStateImplCopyWith<$Res> {
  __$$LoadingServiceStateImplCopyWithImpl(_$LoadingServiceStateImpl _value,
      $Res Function(_$LoadingServiceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingServiceStateImpl implements _LoadingServiceState {
  const _$LoadingServiceStateImpl();

  @override
  String toString() {
    return 'ServiceState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingServiceStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ServiceModel> services) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ServiceModel> services)? data,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ServiceModel> services)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialServiceState value) initial,
    required TResult Function(_LoadingServiceState value) loading,
    required TResult Function(_DataServiceState value) data,
    required TResult Function(_ErrorServiceState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialServiceState value)? initial,
    TResult? Function(_LoadingServiceState value)? loading,
    TResult? Function(_DataServiceState value)? data,
    TResult? Function(_ErrorServiceState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialServiceState value)? initial,
    TResult Function(_LoadingServiceState value)? loading,
    TResult Function(_DataServiceState value)? data,
    TResult Function(_ErrorServiceState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingServiceState implements ServiceState {
  const factory _LoadingServiceState() = _$LoadingServiceStateImpl;
}

/// @nodoc
abstract class _$$DataServiceStateImplCopyWith<$Res> {
  factory _$$DataServiceStateImplCopyWith(_$DataServiceStateImpl value,
          $Res Function(_$DataServiceStateImpl) then) =
      __$$DataServiceStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ServiceModel> services});
}

/// @nodoc
class __$$DataServiceStateImplCopyWithImpl<$Res>
    extends _$ServiceStateCopyWithImpl<$Res, _$DataServiceStateImpl>
    implements _$$DataServiceStateImplCopyWith<$Res> {
  __$$DataServiceStateImplCopyWithImpl(_$DataServiceStateImpl _value,
      $Res Function(_$DataServiceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_$DataServiceStateImpl(
      null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ));
  }
}

/// @nodoc

class _$DataServiceStateImpl implements _DataServiceState {
  const _$DataServiceStateImpl(final List<ServiceModel> services)
      : _services = services;

  final List<ServiceModel> _services;
  @override
  List<ServiceModel> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServiceState.data(services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataServiceStateImpl &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_services));

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataServiceStateImplCopyWith<_$DataServiceStateImpl> get copyWith =>
      __$$DataServiceStateImplCopyWithImpl<_$DataServiceStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ServiceModel> services) data,
    required TResult Function(String error) error,
  }) {
    return data(services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ServiceModel> services)? data,
    TResult? Function(String error)? error,
  }) {
    return data?.call(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ServiceModel> services)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialServiceState value) initial,
    required TResult Function(_LoadingServiceState value) loading,
    required TResult Function(_DataServiceState value) data,
    required TResult Function(_ErrorServiceState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialServiceState value)? initial,
    TResult? Function(_LoadingServiceState value)? loading,
    TResult? Function(_DataServiceState value)? data,
    TResult? Function(_ErrorServiceState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialServiceState value)? initial,
    TResult Function(_LoadingServiceState value)? loading,
    TResult Function(_DataServiceState value)? data,
    TResult Function(_ErrorServiceState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataServiceState implements ServiceState {
  const factory _DataServiceState(final List<ServiceModel> services) =
      _$DataServiceStateImpl;

  List<ServiceModel> get services;

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataServiceStateImplCopyWith<_$DataServiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorServiceStateImplCopyWith<$Res> {
  factory _$$ErrorServiceStateImplCopyWith(_$ErrorServiceStateImpl value,
          $Res Function(_$ErrorServiceStateImpl) then) =
      __$$ErrorServiceStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorServiceStateImplCopyWithImpl<$Res>
    extends _$ServiceStateCopyWithImpl<$Res, _$ErrorServiceStateImpl>
    implements _$$ErrorServiceStateImplCopyWith<$Res> {
  __$$ErrorServiceStateImplCopyWithImpl(_$ErrorServiceStateImpl _value,
      $Res Function(_$ErrorServiceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorServiceStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorServiceStateImpl implements _ErrorServiceState {
  const _$ErrorServiceStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ServiceState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorServiceStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorServiceStateImplCopyWith<_$ErrorServiceStateImpl> get copyWith =>
      __$$ErrorServiceStateImplCopyWithImpl<_$ErrorServiceStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ServiceModel> services) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ServiceModel> services)? data,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ServiceModel> services)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialServiceState value) initial,
    required TResult Function(_LoadingServiceState value) loading,
    required TResult Function(_DataServiceState value) data,
    required TResult Function(_ErrorServiceState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialServiceState value)? initial,
    TResult? Function(_LoadingServiceState value)? loading,
    TResult? Function(_DataServiceState value)? data,
    TResult? Function(_ErrorServiceState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialServiceState value)? initial,
    TResult Function(_LoadingServiceState value)? loading,
    TResult Function(_DataServiceState value)? data,
    TResult Function(_ErrorServiceState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorServiceState implements ServiceState {
  const factory _ErrorServiceState(final String error) =
      _$ErrorServiceStateImpl;

  String get error;

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorServiceStateImplCopyWith<_$ErrorServiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

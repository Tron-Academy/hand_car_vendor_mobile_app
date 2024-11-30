// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddServiceModel _$AddServiceModelFromJson(Map<String, dynamic> json) {
  return _AddServiceModel.fromJson(json);
}

/// @nodoc
mixin _$AddServiceModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;

  /// Serializes this AddServiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddServiceModelCopyWith<AddServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddServiceModelCopyWith<$Res> {
  factory $AddServiceModelCopyWith(
          AddServiceModel value, $Res Function(AddServiceModel) then) =
      _$AddServiceModelCopyWithImpl<$Res, AddServiceModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String category,
      String description,
      double price,
      List<String> imageUrls});
}

/// @nodoc
class _$AddServiceModelCopyWithImpl<$Res, $Val extends AddServiceModel>
    implements $AddServiceModelCopyWith<$Res> {
  _$AddServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrls = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddServiceModelImplCopyWith<$Res>
    implements $AddServiceModelCopyWith<$Res> {
  factory _$$AddServiceModelImplCopyWith(_$AddServiceModelImpl value,
          $Res Function(_$AddServiceModelImpl) then) =
      __$$AddServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String category,
      String description,
      double price,
      List<String> imageUrls});
}

/// @nodoc
class __$$AddServiceModelImplCopyWithImpl<$Res>
    extends _$AddServiceModelCopyWithImpl<$Res, _$AddServiceModelImpl>
    implements _$$AddServiceModelImplCopyWith<$Res> {
  __$$AddServiceModelImplCopyWithImpl(
      _$AddServiceModelImpl _value, $Res Function(_$AddServiceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrls = null,
  }) {
    return _then(_$AddServiceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddServiceModelImpl implements _AddServiceModel {
  const _$AddServiceModelImpl(
      {required this.id,
      required this.name,
      required this.category,
      required this.description,
      required this.price,
      required final List<String> imageUrls})
      : _imageUrls = imageUrls;

  factory _$AddServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddServiceModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String category;
  @override
  final String description;
  @override
  final double price;
  final List<String> _imageUrls;
  @override
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  String toString() {
    return 'AddServiceModel(id: $id, name: $name, category: $category, description: $description, price: $price, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddServiceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, category, description,
      price, const DeepCollectionEquality().hash(_imageUrls));

  /// Create a copy of AddServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddServiceModelImplCopyWith<_$AddServiceModelImpl> get copyWith =>
      __$$AddServiceModelImplCopyWithImpl<_$AddServiceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddServiceModelImplToJson(
      this,
    );
  }
}

abstract class _AddServiceModel implements AddServiceModel {
  const factory _AddServiceModel(
      {required final String id,
      required final String name,
      required final String category,
      required final String description,
      required final double price,
      required final List<String> imageUrls}) = _$AddServiceModelImpl;

  factory _AddServiceModel.fromJson(Map<String, dynamic> json) =
      _$AddServiceModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get category;
  @override
  String get description;
  @override
  double get price;
  @override
  List<String> get imageUrls;

  /// Create a copy of AddServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddServiceModelImplCopyWith<_$AddServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

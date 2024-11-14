// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_picker_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImagePickerProviderState {
  List<XFile> get selectedImages => throw _privateConstructorUsedError;

  /// Create a copy of ImagePickerProviderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagePickerProviderStateCopyWith<ImagePickerProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePickerProviderStateCopyWith<$Res> {
  factory $ImagePickerProviderStateCopyWith(ImagePickerProviderState value,
          $Res Function(ImagePickerProviderState) then) =
      _$ImagePickerProviderStateCopyWithImpl<$Res, ImagePickerProviderState>;
  @useResult
  $Res call({List<XFile> selectedImages});
}

/// @nodoc
class _$ImagePickerProviderStateCopyWithImpl<$Res,
        $Val extends ImagePickerProviderState>
    implements $ImagePickerProviderStateCopyWith<$Res> {
  _$ImagePickerProviderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagePickerProviderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedImages = null,
  }) {
    return _then(_value.copyWith(
      selectedImages: null == selectedImages
          ? _value.selectedImages
          : selectedImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagePickerProviderStateImplCopyWith<$Res>
    implements $ImagePickerProviderStateCopyWith<$Res> {
  factory _$$ImagePickerProviderStateImplCopyWith(
          _$ImagePickerProviderStateImpl value,
          $Res Function(_$ImagePickerProviderStateImpl) then) =
      __$$ImagePickerProviderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<XFile> selectedImages});
}

/// @nodoc
class __$$ImagePickerProviderStateImplCopyWithImpl<$Res>
    extends _$ImagePickerProviderStateCopyWithImpl<$Res,
        _$ImagePickerProviderStateImpl>
    implements _$$ImagePickerProviderStateImplCopyWith<$Res> {
  __$$ImagePickerProviderStateImplCopyWithImpl(
      _$ImagePickerProviderStateImpl _value,
      $Res Function(_$ImagePickerProviderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagePickerProviderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedImages = null,
  }) {
    return _then(_$ImagePickerProviderStateImpl(
      selectedImages: null == selectedImages
          ? _value._selectedImages
          : selectedImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$ImagePickerProviderStateImpl implements _ImagePickerProviderState {
  _$ImagePickerProviderStateImpl({required final List<XFile> selectedImages})
      : _selectedImages = selectedImages;

  final List<XFile> _selectedImages;
  @override
  List<XFile> get selectedImages {
    if (_selectedImages is EqualUnmodifiableListView) return _selectedImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedImages);
  }

  @override
  String toString() {
    return 'ImagePickerProviderState(selectedImages: $selectedImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickerProviderStateImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedImages, _selectedImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedImages));

  /// Create a copy of ImagePickerProviderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePickerProviderStateImplCopyWith<_$ImagePickerProviderStateImpl>
      get copyWith => __$$ImagePickerProviderStateImplCopyWithImpl<
          _$ImagePickerProviderStateImpl>(this, _$identity);
}

abstract class _ImagePickerProviderState implements ImagePickerProviderState {
  factory _ImagePickerProviderState(
          {required final List<XFile> selectedImages}) =
      _$ImagePickerProviderStateImpl;

  @override
  List<XFile> get selectedImages;

  /// Create a copy of ImagePickerProviderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagePickerProviderStateImplCopyWith<_$ImagePickerProviderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

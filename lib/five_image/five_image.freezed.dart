// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'five_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FiveImageState {
  List<Map<String, String>> get imagePathList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FiveImageStateCopyWith<FiveImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiveImageStateCopyWith<$Res> {
  factory $FiveImageStateCopyWith(
          FiveImageState value, $Res Function(FiveImageState) then) =
      _$FiveImageStateCopyWithImpl<$Res, FiveImageState>;
  @useResult
  $Res call({List<Map<String, String>> imagePathList});
}

/// @nodoc
class _$FiveImageStateCopyWithImpl<$Res, $Val extends FiveImageState>
    implements $FiveImageStateCopyWith<$Res> {
  _$FiveImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePathList = null,
  }) {
    return _then(_value.copyWith(
      imagePathList: null == imagePathList
          ? _value.imagePathList
          : imagePathList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FiveImageStateImplCopyWith<$Res>
    implements $FiveImageStateCopyWith<$Res> {
  factory _$$FiveImageStateImplCopyWith(_$FiveImageStateImpl value,
          $Res Function(_$FiveImageStateImpl) then) =
      __$$FiveImageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, String>> imagePathList});
}

/// @nodoc
class __$$FiveImageStateImplCopyWithImpl<$Res>
    extends _$FiveImageStateCopyWithImpl<$Res, _$FiveImageStateImpl>
    implements _$$FiveImageStateImplCopyWith<$Res> {
  __$$FiveImageStateImplCopyWithImpl(
      _$FiveImageStateImpl _value, $Res Function(_$FiveImageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePathList = null,
  }) {
    return _then(_$FiveImageStateImpl(
      imagePathList: null == imagePathList
          ? _value._imagePathList
          : imagePathList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// @nodoc

class _$FiveImageStateImpl implements _FiveImageState {
  const _$FiveImageStateImpl(
      {final List<Map<String, String>> imagePathList = const []})
      : _imagePathList = imagePathList;

  final List<Map<String, String>> _imagePathList;
  @override
  @JsonKey()
  List<Map<String, String>> get imagePathList {
    if (_imagePathList is EqualUnmodifiableListView) return _imagePathList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagePathList);
  }

  @override
  String toString() {
    return 'FiveImageState(imagePathList: $imagePathList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FiveImageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._imagePathList, _imagePathList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_imagePathList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FiveImageStateImplCopyWith<_$FiveImageStateImpl> get copyWith =>
      __$$FiveImageStateImplCopyWithImpl<_$FiveImageStateImpl>(
          this, _$identity);
}

abstract class _FiveImageState implements FiveImageState {
  const factory _FiveImageState(
      {final List<Map<String, String>> imagePathList}) = _$FiveImageStateImpl;

  @override
  List<Map<String, String>> get imagePathList;
  @override
  @JsonKey(ignore: true)
  _$$FiveImageStateImplCopyWith<_$FiveImageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrivateKey _$PrivateKeyFromJson(Map<String, dynamic> json) {
  return _PrivateKey.fromJson(json);
}

/// @nodoc
mixin _$PrivateKey {
  PrivateKeyType get type => throw _privateConstructorUsedError;
  @DataJsonConverter()
  Uint8List get value => throw _privateConstructorUsedError;

  /// Serializes this PrivateKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrivateKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivateKeyCopyWith<PrivateKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateKeyCopyWith<$Res> {
  factory $PrivateKeyCopyWith(
          PrivateKey value, $Res Function(PrivateKey) then) =
      _$PrivateKeyCopyWithImpl<$Res, PrivateKey>;
  @useResult
  $Res call({PrivateKeyType type, @DataJsonConverter() Uint8List value});
}

/// @nodoc
class _$PrivateKeyCopyWithImpl<$Res, $Val extends PrivateKey>
    implements $PrivateKeyCopyWith<$Res> {
  _$PrivateKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivateKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PrivateKeyType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivateKeyImplCopyWith<$Res>
    implements $PrivateKeyCopyWith<$Res> {
  factory _$$PrivateKeyImplCopyWith(
          _$PrivateKeyImpl value, $Res Function(_$PrivateKeyImpl) then) =
      __$$PrivateKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PrivateKeyType type, @DataJsonConverter() Uint8List value});
}

/// @nodoc
class __$$PrivateKeyImplCopyWithImpl<$Res>
    extends _$PrivateKeyCopyWithImpl<$Res, _$PrivateKeyImpl>
    implements _$$PrivateKeyImplCopyWith<$Res> {
  __$$PrivateKeyImplCopyWithImpl(
      _$PrivateKeyImpl _value, $Res Function(_$PrivateKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivateKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$PrivateKeyImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PrivateKeyType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrivateKeyImpl implements _PrivateKey {
  _$PrivateKeyImpl(
      {required this.type, @DataJsonConverter() required this.value});

  factory _$PrivateKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivateKeyImplFromJson(json);

  @override
  final PrivateKeyType type;
  @override
  @DataJsonConverter()
  final Uint8List value;

  @override
  String toString() {
    return 'PrivateKey(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateKeyImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(value));

  /// Create a copy of PrivateKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateKeyImplCopyWith<_$PrivateKeyImpl> get copyWith =>
      __$$PrivateKeyImplCopyWithImpl<_$PrivateKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivateKeyImplToJson(
      this,
    );
  }
}

abstract class _PrivateKey implements PrivateKey {
  factory _PrivateKey(
      {required final PrivateKeyType type,
      @DataJsonConverter() required final Uint8List value}) = _$PrivateKeyImpl;

  factory _PrivateKey.fromJson(Map<String, dynamic> json) =
      _$PrivateKeyImpl.fromJson;

  @override
  PrivateKeyType get type;
  @override
  @DataJsonConverter()
  Uint8List get value;

  /// Create a copy of PrivateKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivateKeyImplCopyWith<_$PrivateKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

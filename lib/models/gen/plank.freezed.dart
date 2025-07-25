// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../plank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Plank _$PlankFromJson(Map<String, dynamic> json) {
  return _Plank.fromJson(json);
}

/// @nodoc
mixin _$Plank {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this Plank to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Plank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlankCopyWith<Plank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlankCopyWith<$Res> {
  factory $PlankCopyWith(Plank value, $Res Function(Plank) then) =
      _$PlankCopyWithImpl<$Res, Plank>;
  @useResult
  $Res call(
      {String id,
      String title,
      String image,
      String level,
      int duration,
      String description});
}

/// @nodoc
class _$PlankCopyWithImpl<$Res, $Val extends Plank>
    implements $PlankCopyWith<$Res> {
  _$PlankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Plank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? level = null,
    Object? duration = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlankImplCopyWith<$Res> implements $PlankCopyWith<$Res> {
  factory _$$PlankImplCopyWith(
          _$PlankImpl value, $Res Function(_$PlankImpl) then) =
      __$$PlankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String image,
      String level,
      int duration,
      String description});
}

/// @nodoc
class __$$PlankImplCopyWithImpl<$Res>
    extends _$PlankCopyWithImpl<$Res, _$PlankImpl>
    implements _$$PlankImplCopyWith<$Res> {
  __$$PlankImplCopyWithImpl(
      _$PlankImpl _value, $Res Function(_$PlankImpl) _then)
      : super(_value, _then);

  /// Create a copy of Plank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? level = null,
    Object? duration = null,
    Object? description = null,
  }) {
    return _then(_$PlankImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlankImpl implements _Plank {
  const _$PlankImpl(
      {required this.id,
      required this.title,
      required this.image,
      required this.level,
      required this.duration,
      required this.description});

  factory _$PlankImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlankImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String level;
  @override
  final int duration;
  @override
  final String description;

  @override
  String toString() {
    return 'Plank(id: $id, title: $title, image: $image, level: $level, duration: $duration, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlankImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, level, duration, description);

  /// Create a copy of Plank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlankImplCopyWith<_$PlankImpl> get copyWith =>
      __$$PlankImplCopyWithImpl<_$PlankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlankImplToJson(
      this,
    );
  }
}

abstract class _Plank implements Plank {
  const factory _Plank(
      {required final String id,
      required final String title,
      required final String image,
      required final String level,
      required final int duration,
      required final String description}) = _$PlankImpl;

  factory _Plank.fromJson(Map<String, dynamic> json) = _$PlankImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get level;
  @override
  int get duration;
  @override
  String get description;

  /// Create a copy of Plank
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlankImplCopyWith<_$PlankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

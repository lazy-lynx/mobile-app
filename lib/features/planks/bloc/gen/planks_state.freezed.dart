// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../planks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlanksState {
  PlanksScreenState get screenState => throw _privateConstructorUsedError;
  List<Plank> get planks => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of PlanksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanksStateCopyWith<PlanksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanksStateCopyWith<$Res> {
  factory $PlanksStateCopyWith(
          PlanksState value, $Res Function(PlanksState) then) =
      _$PlanksStateCopyWithImpl<$Res, PlanksState>;
  @useResult
  $Res call(
      {PlanksScreenState screenState, List<Plank> planks, String errorMessage});
}

/// @nodoc
class _$PlanksStateCopyWithImpl<$Res, $Val extends PlanksState>
    implements $PlanksStateCopyWith<$Res> {
  _$PlanksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenState = null,
    Object? planks = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      screenState: null == screenState
          ? _value.screenState
          : screenState // ignore: cast_nullable_to_non_nullable
              as PlanksScreenState,
      planks: null == planks
          ? _value.planks
          : planks // ignore: cast_nullable_to_non_nullable
              as List<Plank>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanksStateImplCopyWith<$Res>
    implements $PlanksStateCopyWith<$Res> {
  factory _$$PlanksStateImplCopyWith(
          _$PlanksStateImpl value, $Res Function(_$PlanksStateImpl) then) =
      __$$PlanksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlanksScreenState screenState, List<Plank> planks, String errorMessage});
}

/// @nodoc
class __$$PlanksStateImplCopyWithImpl<$Res>
    extends _$PlanksStateCopyWithImpl<$Res, _$PlanksStateImpl>
    implements _$$PlanksStateImplCopyWith<$Res> {
  __$$PlanksStateImplCopyWithImpl(
      _$PlanksStateImpl _value, $Res Function(_$PlanksStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenState = null,
    Object? planks = null,
    Object? errorMessage = null,
  }) {
    return _then(_$PlanksStateImpl(
      screenState: null == screenState
          ? _value.screenState
          : screenState // ignore: cast_nullable_to_non_nullable
              as PlanksScreenState,
      planks: null == planks
          ? _value._planks
          : planks // ignore: cast_nullable_to_non_nullable
              as List<Plank>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlanksStateImpl implements _PlanksState {
  const _$PlanksStateImpl(
      {this.screenState = PlanksScreenState.initial,
      final List<Plank> planks = const [],
      this.errorMessage = ''})
      : _planks = planks;

  @override
  @JsonKey()
  final PlanksScreenState screenState;
  final List<Plank> _planks;
  @override
  @JsonKey()
  List<Plank> get planks {
    if (_planks is EqualUnmodifiableListView) return _planks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_planks);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'PlanksState(screenState: $screenState, planks: $planks, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanksStateImpl &&
            (identical(other.screenState, screenState) ||
                other.screenState == screenState) &&
            const DeepCollectionEquality().equals(other._planks, _planks) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screenState,
      const DeepCollectionEquality().hash(_planks), errorMessage);

  /// Create a copy of PlanksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanksStateImplCopyWith<_$PlanksStateImpl> get copyWith =>
      __$$PlanksStateImplCopyWithImpl<_$PlanksStateImpl>(this, _$identity);
}

abstract class _PlanksState implements PlanksState {
  const factory _PlanksState(
      {final PlanksScreenState screenState,
      final List<Plank> planks,
      final String errorMessage}) = _$PlanksStateImpl;

  @override
  PlanksScreenState get screenState;
  @override
  List<Plank> get planks;
  @override
  String get errorMessage;

  /// Create a copy of PlanksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanksStateImplCopyWith<_$PlanksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  String get name => throw _privateConstructorUsedError;
  int get activeSet => throw _privateConstructorUsedError;
  bool get exerciseDone => throw _privateConstructorUsedError;
  List<MySet> get sets => throw _privateConstructorUsedError;
  int get breakTime => throw _privateConstructorUsedError;
  String get muscleGroup => throw _privateConstructorUsedError;
  List<String> get equipment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call(
      {String name,
      int activeSet,
      bool exerciseDone,
      List<MySet> sets,
      int breakTime,
      String muscleGroup,
      List<String> equipment});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? activeSet = null,
    Object? exerciseDone = null,
    Object? sets = null,
    Object? breakTime = null,
    Object? muscleGroup = null,
    Object? equipment = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      activeSet: null == activeSet
          ? _value.activeSet
          : activeSet // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseDone: null == exerciseDone
          ? _value.exerciseDone
          : exerciseDone // ignore: cast_nullable_to_non_nullable
              as bool,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<MySet>,
      breakTime: null == breakTime
          ? _value.breakTime
          : breakTime // ignore: cast_nullable_to_non_nullable
              as int,
      muscleGroup: null == muscleGroup
          ? _value.muscleGroup
          : muscleGroup // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: null == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseImplCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$ExerciseImplCopyWith(
          _$ExerciseImpl value, $Res Function(_$ExerciseImpl) then) =
      __$$ExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int activeSet,
      bool exerciseDone,
      List<MySet> sets,
      int breakTime,
      String muscleGroup,
      List<String> equipment});
}

/// @nodoc
class __$$ExerciseImplCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$ExerciseImpl>
    implements _$$ExerciseImplCopyWith<$Res> {
  __$$ExerciseImplCopyWithImpl(
      _$ExerciseImpl _value, $Res Function(_$ExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? activeSet = null,
    Object? exerciseDone = null,
    Object? sets = null,
    Object? breakTime = null,
    Object? muscleGroup = null,
    Object? equipment = null,
  }) {
    return _then(_$ExerciseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      activeSet: null == activeSet
          ? _value.activeSet
          : activeSet // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseDone: null == exerciseDone
          ? _value.exerciseDone
          : exerciseDone // ignore: cast_nullable_to_non_nullable
              as bool,
      sets: null == sets
          ? _value._sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<MySet>,
      breakTime: null == breakTime
          ? _value.breakTime
          : breakTime // ignore: cast_nullable_to_non_nullable
              as int,
      muscleGroup: null == muscleGroup
          ? _value.muscleGroup
          : muscleGroup // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: null == equipment
          ? _value._equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseImpl implements _Exercise {
  const _$ExerciseImpl(
      {required this.name,
      required this.activeSet,
      required this.exerciseDone,
      required final List<MySet> sets,
      required this.breakTime,
      required this.muscleGroup,
      required final List<String> equipment})
      : _sets = sets,
        _equipment = equipment;

  factory _$ExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseImplFromJson(json);

  @override
  final String name;
  @override
  final int activeSet;
  @override
  final bool exerciseDone;
  final List<MySet> _sets;
  @override
  List<MySet> get sets {
    if (_sets is EqualUnmodifiableListView) return _sets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sets);
  }

  @override
  final int breakTime;
  @override
  final String muscleGroup;
  final List<String> _equipment;
  @override
  List<String> get equipment {
    if (_equipment is EqualUnmodifiableListView) return _equipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipment);
  }

  @override
  String toString() {
    return 'Exercise(name: $name, activeSet: $activeSet, exerciseDone: $exerciseDone, sets: $sets, breakTime: $breakTime, muscleGroup: $muscleGroup, equipment: $equipment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.activeSet, activeSet) ||
                other.activeSet == activeSet) &&
            (identical(other.exerciseDone, exerciseDone) ||
                other.exerciseDone == exerciseDone) &&
            const DeepCollectionEquality().equals(other._sets, _sets) &&
            (identical(other.breakTime, breakTime) ||
                other.breakTime == breakTime) &&
            (identical(other.muscleGroup, muscleGroup) ||
                other.muscleGroup == muscleGroup) &&
            const DeepCollectionEquality()
                .equals(other._equipment, _equipment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      activeSet,
      exerciseDone,
      const DeepCollectionEquality().hash(_sets),
      breakTime,
      muscleGroup,
      const DeepCollectionEquality().hash(_equipment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseImplToJson(
      this,
    );
  }
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {required final String name,
      required final int activeSet,
      required final bool exerciseDone,
      required final List<MySet> sets,
      required final int breakTime,
      required final String muscleGroup,
      required final List<String> equipment}) = _$ExerciseImpl;

  factory _Exercise.fromJson(Map<String, dynamic> json) =
      _$ExerciseImpl.fromJson;

  @override
  String get name;
  @override
  int get activeSet;
  @override
  bool get exerciseDone;
  @override
  List<MySet> get sets;
  @override
  int get breakTime;
  @override
  String get muscleGroup;
  @override
  List<String> get equipment;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

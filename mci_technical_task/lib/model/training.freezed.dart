// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Training _$TrainingFromJson(Map<String, dynamic> json) {
  return _Training.fromJson(json);
}

/// @nodoc
mixin _$Training {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get split => throw _privateConstructorUsedError;
  List<Exercise> get exercises => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingCopyWith<Training> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingCopyWith<$Res> {
  factory $TrainingCopyWith(Training value, $Res Function(Training) then) =
      _$TrainingCopyWithImpl<$Res, Training>;
  @useResult
  $Res call(
      {String name,
      String description,
      int duration,
      String category,
      String split,
      List<Exercise> exercises});
}

/// @nodoc
class _$TrainingCopyWithImpl<$Res, $Val extends Training>
    implements $TrainingCopyWith<$Res> {
  _$TrainingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? duration = null,
    Object? category = null,
    Object? split = null,
    Object? exercises = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      split: null == split
          ? _value.split
          : split // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingImplCopyWith<$Res>
    implements $TrainingCopyWith<$Res> {
  factory _$$TrainingImplCopyWith(
          _$TrainingImpl value, $Res Function(_$TrainingImpl) then) =
      __$$TrainingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      int duration,
      String category,
      String split,
      List<Exercise> exercises});
}

/// @nodoc
class __$$TrainingImplCopyWithImpl<$Res>
    extends _$TrainingCopyWithImpl<$Res, _$TrainingImpl>
    implements _$$TrainingImplCopyWith<$Res> {
  __$$TrainingImplCopyWithImpl(
      _$TrainingImpl _value, $Res Function(_$TrainingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? duration = null,
    Object? category = null,
    Object? split = null,
    Object? exercises = null,
  }) {
    return _then(_$TrainingImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      split: null == split
          ? _value.split
          : split // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingImpl implements _Training {
  const _$TrainingImpl(
      {required this.name,
      required this.description,
      required this.duration,
      required this.category,
      required this.split,
      required final List<Exercise> exercises})
      : _exercises = exercises;

  factory _$TrainingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final int duration;
  @override
  final String category;
  @override
  final String split;
  final List<Exercise> _exercises;
  @override
  List<Exercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  String toString() {
    return 'Training(name: $name, description: $description, duration: $duration, category: $category, split: $split, exercises: $exercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.split, split) || other.split == split) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, duration,
      category, split, const DeepCollectionEquality().hash(_exercises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingImplCopyWith<_$TrainingImpl> get copyWith =>
      __$$TrainingImplCopyWithImpl<_$TrainingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingImplToJson(
      this,
    );
  }
}

abstract class _Training implements Training {
  const factory _Training(
      {required final String name,
      required final String description,
      required final int duration,
      required final String category,
      required final String split,
      required final List<Exercise> exercises}) = _$TrainingImpl;

  factory _Training.fromJson(Map<String, dynamic> json) =
      _$TrainingImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  int get duration;
  @override
  String get category;
  @override
  String get split;
  @override
  List<Exercise> get exercises;
  @override
  @JsonKey(ignore: true)
  _$$TrainingImplCopyWith<_$TrainingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

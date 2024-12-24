// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MySet _$MySetFromJson(Map<String, dynamic> json) {
  return _MySet.fromJson(json);
}

/// @nodoc
mixin _$MySet {
  Reps get reps => throw _privateConstructorUsedError;
  Weight get weight => throw _privateConstructorUsedError;
  double get calculatedMaxRep => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MySetCopyWith<MySet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MySetCopyWith<$Res> {
  factory $MySetCopyWith(MySet value, $Res Function(MySet) then) =
      _$MySetCopyWithImpl<$Res, MySet>;
  @useResult
  $Res call({Reps reps, Weight weight, double calculatedMaxRep});

  $RepsCopyWith<$Res> get reps;
  $WeightCopyWith<$Res> get weight;
}

/// @nodoc
class _$MySetCopyWithImpl<$Res, $Val extends MySet>
    implements $MySetCopyWith<$Res> {
  _$MySetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reps = null,
    Object? weight = null,
    Object? calculatedMaxRep = null,
  }) {
    return _then(_value.copyWith(
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as Reps,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      calculatedMaxRep: null == calculatedMaxRep
          ? _value.calculatedMaxRep
          : calculatedMaxRep // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepsCopyWith<$Res> get reps {
    return $RepsCopyWith<$Res>(_value.reps, (value) {
      return _then(_value.copyWith(reps: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeightCopyWith<$Res> get weight {
    return $WeightCopyWith<$Res>(_value.weight, (value) {
      return _then(_value.copyWith(weight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MySetImplCopyWith<$Res> implements $MySetCopyWith<$Res> {
  factory _$$MySetImplCopyWith(
          _$MySetImpl value, $Res Function(_$MySetImpl) then) =
      __$$MySetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Reps reps, Weight weight, double calculatedMaxRep});

  @override
  $RepsCopyWith<$Res> get reps;
  @override
  $WeightCopyWith<$Res> get weight;
}

/// @nodoc
class __$$MySetImplCopyWithImpl<$Res>
    extends _$MySetCopyWithImpl<$Res, _$MySetImpl>
    implements _$$MySetImplCopyWith<$Res> {
  __$$MySetImplCopyWithImpl(
      _$MySetImpl _value, $Res Function(_$MySetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reps = null,
    Object? weight = null,
    Object? calculatedMaxRep = null,
  }) {
    return _then(_$MySetImpl(
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as Reps,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      calculatedMaxRep: null == calculatedMaxRep
          ? _value.calculatedMaxRep
          : calculatedMaxRep // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MySetImpl implements _MySet {
  const _$MySetImpl(
      {required this.reps,
      required this.weight,
      required this.calculatedMaxRep});

  factory _$MySetImpl.fromJson(Map<String, dynamic> json) =>
      _$$MySetImplFromJson(json);

  @override
  final Reps reps;
  @override
  final Weight weight;
  @override
  final double calculatedMaxRep;

  @override
  String toString() {
    return 'MySet(reps: $reps, weight: $weight, calculatedMaxRep: $calculatedMaxRep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MySetImpl &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.calculatedMaxRep, calculatedMaxRep) ||
                other.calculatedMaxRep == calculatedMaxRep));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reps, weight, calculatedMaxRep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MySetImplCopyWith<_$MySetImpl> get copyWith =>
      __$$MySetImplCopyWithImpl<_$MySetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MySetImplToJson(
      this,
    );
  }
}

abstract class _MySet implements MySet {
  const factory _MySet(
      {required final Reps reps,
      required final Weight weight,
      required final double calculatedMaxRep}) = _$MySetImpl;

  factory _MySet.fromJson(Map<String, dynamic> json) = _$MySetImpl.fromJson;

  @override
  Reps get reps;
  @override
  Weight get weight;
  @override
  double get calculatedMaxRep;
  @override
  @JsonKey(ignore: true)
  _$$MySetImplCopyWith<_$MySetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reps _$RepsFromJson(Map<String, dynamic> json) {
  return _Reps.fromJson(json);
}

/// @nodoc
mixin _$Reps {
  int get amount => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepsCopyWith<Reps> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepsCopyWith<$Res> {
  factory $RepsCopyWith(Reps value, $Res Function(Reps) then) =
      _$RepsCopyWithImpl<$Res, Reps>;
  @useResult
  $Res call({int amount, String unit});
}

/// @nodoc
class _$RepsCopyWithImpl<$Res, $Val extends Reps>
    implements $RepsCopyWith<$Res> {
  _$RepsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepsImplCopyWith<$Res> implements $RepsCopyWith<$Res> {
  factory _$$RepsImplCopyWith(
          _$RepsImpl value, $Res Function(_$RepsImpl) then) =
      __$$RepsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, String unit});
}

/// @nodoc
class __$$RepsImplCopyWithImpl<$Res>
    extends _$RepsCopyWithImpl<$Res, _$RepsImpl>
    implements _$$RepsImplCopyWith<$Res> {
  __$$RepsImplCopyWithImpl(_$RepsImpl _value, $Res Function(_$RepsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$RepsImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepsImpl implements _Reps {
  const _$RepsImpl({required this.amount, required this.unit});

  factory _$RepsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepsImplFromJson(json);

  @override
  final int amount;
  @override
  final String unit;

  @override
  String toString() {
    return 'Reps(amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepsImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepsImplCopyWith<_$RepsImpl> get copyWith =>
      __$$RepsImplCopyWithImpl<_$RepsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepsImplToJson(
      this,
    );
  }
}

abstract class _Reps implements Reps {
  const factory _Reps({required final int amount, required final String unit}) =
      _$RepsImpl;

  factory _Reps.fromJson(Map<String, dynamic> json) = _$RepsImpl.fromJson;

  @override
  int get amount;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$RepsImplCopyWith<_$RepsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Weight _$WeightFromJson(Map<String, dynamic> json) {
  return _Weight.fromJson(json);
}

/// @nodoc
mixin _$Weight {
  int get amount => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightCopyWith<Weight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightCopyWith<$Res> {
  factory $WeightCopyWith(Weight value, $Res Function(Weight) then) =
      _$WeightCopyWithImpl<$Res, Weight>;
  @useResult
  $Res call({int amount, String unit});
}

/// @nodoc
class _$WeightCopyWithImpl<$Res, $Val extends Weight>
    implements $WeightCopyWith<$Res> {
  _$WeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeightImplCopyWith<$Res> implements $WeightCopyWith<$Res> {
  factory _$$WeightImplCopyWith(
          _$WeightImpl value, $Res Function(_$WeightImpl) then) =
      __$$WeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, String unit});
}

/// @nodoc
class __$$WeightImplCopyWithImpl<$Res>
    extends _$WeightCopyWithImpl<$Res, _$WeightImpl>
    implements _$$WeightImplCopyWith<$Res> {
  __$$WeightImplCopyWithImpl(
      _$WeightImpl _value, $Res Function(_$WeightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$WeightImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeightImpl implements _Weight {
  const _$WeightImpl({required this.amount, required this.unit});

  factory _$WeightImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightImplFromJson(json);

  @override
  final int amount;
  @override
  final String unit;

  @override
  String toString() {
    return 'Weight(amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightImplCopyWith<_$WeightImpl> get copyWith =>
      __$$WeightImplCopyWithImpl<_$WeightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightImplToJson(
      this,
    );
  }
}

abstract class _Weight implements Weight {
  const factory _Weight(
      {required final int amount, required final String unit}) = _$WeightImpl;

  factory _Weight.fromJson(Map<String, dynamic> json) = _$WeightImpl.fromJson;

  @override
  int get amount;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$WeightImplCopyWith<_$WeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sets.freezed.dart';
part 'sets.g.dart';

@freezed
class MySet with _$MySet {
  const factory MySet({
    required Reps reps,
    required Weight weight,
  }) = _MySet;

  factory MySet.fromJson(Map<String, dynamic> json) => _$MySetFromJson(json);
}

@freezed
class Reps with _$Reps {
  const factory Reps({
    required int amount,
    required String unit,
  }) = _Reps;

  factory Reps.fromJson(Map<String, dynamic> json) => _$RepsFromJson(json);
}

@freezed
class Weight with _$Weight {
  const factory Weight({
    required int amount,
    required String unit,
  }) = _Weight;

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
}
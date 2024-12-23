import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String name,
    required int sets,
    required int reps,
    required String repUnit,
    required int weight,
    required String weightUnit,
    required int breakTime,
    required String muscleGroup,
    required List<String> equipment,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}
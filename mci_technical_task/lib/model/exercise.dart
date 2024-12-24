import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mci_technical_task/model/sets.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String name,
    required int activeSet,
    required bool exerciseDone,
    required List<MySet> sets,
    required int breakTime,
    required String muscleGroup,
    required List<String> equipment,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}
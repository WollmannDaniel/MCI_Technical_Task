import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mci_technical_task/model/exercise.dart';

part 'training.freezed.dart';
part 'training.g.dart';

@freezed
class Training with _$Training {
  const factory Training({
    required String name,
    required String description,
    required int duration,
    required String category,
    required String split,
    required bool trainingFinished,
    required List<Exercise> exercises,
  }) = _Training;

  factory Training.fromJson(Map<String, dynamic> json) => _$TrainingFromJson(json);
}
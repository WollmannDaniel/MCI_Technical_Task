// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      name: json['name'] as String,
      sets: (json['sets'] as num).toInt(),
      reps: (json['reps'] as num).toInt(),
      repUnit: json['repUnit'] as String,
      weight: (json['weight'] as num).toInt(),
      weightUnit: json['weightUnit'] as String,
      breakTime: (json['breakTime'] as num).toInt(),
      muscleGroup: json['muscleGroup'] as String,
      equipment:
          (json['equipment'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sets': instance.sets,
      'reps': instance.reps,
      'repUnit': instance.repUnit,
      'weight': instance.weight,
      'weightUnit': instance.weightUnit,
      'breakTime': instance.breakTime,
      'muscleGroup': instance.muscleGroup,
      'equipment': instance.equipment,
    };

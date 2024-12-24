// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      name: json['name'] as String,
      activeSet: (json['activeSet'] as num).toInt(),
      exerciseDone: json['exerciseDone'] as bool,
      sets: (json['sets'] as List<dynamic>)
          .map((e) => MySet.fromJson(e as Map<String, dynamic>))
          .toList(),
      breakTime: (json['breakTime'] as num).toInt(),
      muscleGroup: json['muscleGroup'] as String,
      equipment:
          (json['equipment'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'activeSet': instance.activeSet,
      'exerciseDone': instance.exerciseDone,
      'sets': instance.sets,
      'breakTime': instance.breakTime,
      'muscleGroup': instance.muscleGroup,
      'equipment': instance.equipment,
    };

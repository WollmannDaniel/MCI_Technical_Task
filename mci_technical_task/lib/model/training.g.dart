// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainingImpl _$$TrainingImplFromJson(Map<String, dynamic> json) =>
    _$TrainingImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      duration: (json['duration'] as num).toInt(),
      category: json['category'] as String,
      split: json['split'] as String,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrainingImplToJson(_$TrainingImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'duration': instance.duration,
      'category': instance.category,
      'split': instance.split,
      'exercises': instance.exercises,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MySetImpl _$$MySetImplFromJson(Map<String, dynamic> json) => _$MySetImpl(
      reps: Reps.fromJson(json['reps'] as Map<String, dynamic>),
      weight: Weight.fromJson(json['weight'] as Map<String, dynamic>),
      calculatedMaxRep: (json['calculatedMaxRep'] as num).toDouble(),
    );

Map<String, dynamic> _$$MySetImplToJson(_$MySetImpl instance) =>
    <String, dynamic>{
      'reps': instance.reps.toJson(),
      'weight': instance.weight.toJson(),
      'calculatedMaxRep': instance.calculatedMaxRep,
    };

_$RepsImpl _$$RepsImplFromJson(Map<String, dynamic> json) => _$RepsImpl(
      amount: (json['amount'] as num).toInt(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$RepsImplToJson(_$RepsImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'unit': instance.unit,
    };

_$WeightImpl _$$WeightImplFromJson(Map<String, dynamic> json) => _$WeightImpl(
      amount: (json['amount'] as num).toInt(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$WeightImplToJson(_$WeightImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'unit': instance.unit,
    };

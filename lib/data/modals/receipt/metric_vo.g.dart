// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Metric _$MetricFromJson(Map<String, dynamic> json) => Metric(
      (json['amount'] as num?)?.toDouble(),
      json['unitShort'] as String?,
      json['unitLong'] as String?,
    );

Map<String, dynamic> _$MetricToJson(Metric instance) => <String, dynamic>{
      'amount': instance.amount,
      'unitShort': instance.unitShort,
      'unitLong': instance.unitLong,
    };

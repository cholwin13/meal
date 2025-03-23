// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasuresVO _$MeasuresVOFromJson(Map<String, dynamic> json) => MeasuresVO(
      json['us'] == null
          ? null
          : Metric.fromJson(json['us'] as Map<String, dynamic>),
      json['metric'] == null
          ? null
          : Metric.fromJson(json['metric'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MeasuresVOToJson(MeasuresVO instance) =>
    <String, dynamic>{
      'us': instance.us,
      'metric': instance.metric,
    };

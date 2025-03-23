// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extendedIngredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtendedIngredient _$ExtendedIngredientFromJson(Map<String, dynamic> json) =>
    ExtendedIngredient(
      (json['id'] as num?)?.toInt(),
      json['aisle'] as String?,
      json['image'] as String?,
      json['consistency'] as String?,
      json['name'] as String?,
      json['nameClean'] as String?,
      json['original'] as String?,
      json['originalName'] as String?,
      (json['amount'] as num?)?.toDouble(),
      json['unit'] as String?,
      json['measures'] == null
          ? null
          : MeasuresVO.fromJson(json['measures'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExtendedIngredientToJson(ExtendedIngredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'aisle': instance.aisle,
      'image': instance.image,
      'consistency': instance.consistency,
      'name': instance.name,
      'nameClean': instance.nameClean,
      'original': instance.original,
      'originalName': instance.originalName,
      'amount': instance.amount,
      'unit': instance.unit,
      'measures': instance.measures,
    };

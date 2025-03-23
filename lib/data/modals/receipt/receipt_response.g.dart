// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReceiptResponse _$ReceiptResponseFromJson(Map<String, dynamic> json) =>
    ReceiptResponse(
      (json['id'] as num?)?.toInt(),
      json['image'] as String?,
      json['imageType'] as String?,
      json['title'] as String?,
      (json['readyInMinutes'] as num?)?.toInt(),
      (json['servings'] as num?)?.toInt(),
      json['sourceUrl'] as String?,
      json['vegetarian'] as bool?,
      json['vegan'] as bool?,
      json['glutenFree'] as bool?,
      json['dairyFree'] as bool?,
      json['veryHealthy'] as bool?,
      json['cheap'] as bool?,
      json['veryPopular'] as bool?,
      json['sustainable'] as bool?,
      json['lowFodmap'] as bool?,
      (json['weightWatcherSmartPoints'] as num?)?.toInt(),
      json['gaps'] as String?,
      (json['preparationMinutes'] as num?)?.toInt(),
      (json['cookingMinutes'] as num?)?.toInt(),
      (json['aggregateLikes'] as num?)?.toInt(),
      (json['healthScore'] as num?)?.toInt(),
      json['creditsText'] as String?,
      json['sourceName'] as String?,
      (json['pricePerServing'] as num?)?.toDouble(),
      (json['extendedIngredients'] as List<dynamic>?)
          ?.map((e) => ExtendedIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['instructions'] as String?,
    );

Map<String, dynamic> _$ReceiptResponseToJson(ReceiptResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'imageType': instance.imageType,
      'title': instance.title,
      'readyInMinutes': instance.readyInMinutes,
      'servings': instance.servings,
      'sourceUrl': instance.sourceUrl,
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'glutenFree': instance.glutenFree,
      'dairyFree': instance.dairyFree,
      'veryHealthy': instance.veryHealthy,
      'cheap': instance.cheap,
      'veryPopular': instance.veryPopular,
      'sustainable': instance.sustainable,
      'lowFodmap': instance.lowFodmap,
      'weightWatcherSmartPoints': instance.weightWatcherSmartPoints,
      'gaps': instance.gaps,
      'preparationMinutes': instance.preparationMinutes,
      'cookingMinutes': instance.cookingMinutes,
      'aggregateLikes': instance.aggregateLikes,
      'healthScore': instance.healthScore,
      'creditsText': instance.creditsText,
      'sourceName': instance.sourceName,
      'pricePerServing': instance.pricePerServing,
      'extendedIngredients': instance.extendedIngredients,
      'instructions': instance.instructions,
    };

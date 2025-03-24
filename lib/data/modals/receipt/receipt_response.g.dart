// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReceiptResponseAdapter extends TypeAdapter<ReceiptResponse> {
  @override
  final int typeId = 1;

  @override
  ReceiptResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ReceiptResponse(
      fields[0] as int?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as int?,
      fields[5] as int?,
      fields[6] as String?,
      fields[7] as bool?,
      fields[8] as bool?,
      fields[9] as bool?,
      fields[10] as bool?,
      fields[11] as bool?,
      fields[12] as bool?,
      fields[13] as bool?,
      fields[14] as bool?,
      fields[15] as bool?,
      fields[16] as int?,
      fields[17] as String?,
      fields[18] as int?,
      fields[19] as int?,
      fields[20] as int?,
      fields[21] as int?,
      fields[22] as String?,
      fields[23] as String?,
      fields[24] as double?,
      (fields[25] as List?)?.cast<ExtendedIngredient>(),
      fields[26] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ReceiptResponse obj) {
    writer
      ..writeByte(27)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.imageType)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.readyInMinutes)
      ..writeByte(5)
      ..write(obj.servings)
      ..writeByte(6)
      ..write(obj.sourceUrl)
      ..writeByte(7)
      ..write(obj.vegetarian)
      ..writeByte(8)
      ..write(obj.vegan)
      ..writeByte(9)
      ..write(obj.glutenFree)
      ..writeByte(10)
      ..write(obj.dairyFree)
      ..writeByte(11)
      ..write(obj.veryHealthy)
      ..writeByte(12)
      ..write(obj.cheap)
      ..writeByte(13)
      ..write(obj.veryPopular)
      ..writeByte(14)
      ..write(obj.sustainable)
      ..writeByte(15)
      ..write(obj.lowFodmap)
      ..writeByte(16)
      ..write(obj.weightWatcherSmartPoints)
      ..writeByte(17)
      ..write(obj.gaps)
      ..writeByte(18)
      ..write(obj.preparationMinutes)
      ..writeByte(19)
      ..write(obj.cookingMinutes)
      ..writeByte(20)
      ..write(obj.aggregateLikes)
      ..writeByte(21)
      ..write(obj.healthScore)
      ..writeByte(22)
      ..write(obj.creditsText)
      ..writeByte(23)
      ..write(obj.sourceName)
      ..writeByte(24)
      ..write(obj.pricePerServing)
      ..writeByte(25)
      ..write(obj.extendedIngredients)
      ..writeByte(26)
      ..write(obj.instructions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReceiptResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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

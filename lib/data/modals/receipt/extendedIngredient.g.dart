// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extendedIngredient.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExtendedIngredientAdapter extends TypeAdapter<ExtendedIngredient> {
  @override
  final int typeId = 2;

  @override
  ExtendedIngredient read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExtendedIngredient(
      fields[0] as int?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as double?,
      fields[9] as String?,
      fields[10] as MeasuresVO?,
    );
  }

  @override
  void write(BinaryWriter writer, ExtendedIngredient obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.aisle)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.consistency)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.nameClean)
      ..writeByte(6)
      ..write(obj.original)
      ..writeByte(7)
      ..write(obj.originalName)
      ..writeByte(8)
      ..write(obj.amount)
      ..writeByte(9)
      ..write(obj.unit)
      ..writeByte(10)
      ..write(obj.measures);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExtendedIngredientAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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

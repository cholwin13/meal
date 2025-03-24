// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MetricAdapter extends TypeAdapter<Metric> {
  @override
  final int typeId = 4;

  @override
  Metric read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Metric(
      fields[0] as double?,
      fields[1] as String?,
      fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Metric obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.amount)
      ..writeByte(1)
      ..write(obj.unitShort)
      ..writeByte(2)
      ..write(obj.unitLong);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MetricAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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

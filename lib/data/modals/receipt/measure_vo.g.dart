// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_vo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasuresVOAdapter extends TypeAdapter<MeasuresVO> {
  @override
  final int typeId = 3;

  @override
  MeasuresVO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MeasuresVO(
      fields[0] as Metric?,
      fields[1] as Metric?,
    );
  }

  @override
  void write(BinaryWriter writer, MeasuresVO obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.us)
      ..writeByte(1)
      ..write(obj.metric);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MeasuresVOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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

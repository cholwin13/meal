import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'metric_vo.dart';

part 'measure_vo.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class MeasuresVO {
  @HiveField(0)
  @JsonKey(name: 'us')
  Metric? us;

  @HiveField(1)
  @JsonKey(name: 'metric')
  Metric? metric;

  MeasuresVO(this.us, this.metric);

  factory MeasuresVO.fromJson(Map<String, dynamic> json) => _$MeasuresVOFromJson(json);

  Map<String, dynamic> toJson() => _$MeasuresVOToJson(this);
}
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'metric_vo.g.dart';

@HiveType(typeId: 4)
@JsonSerializable()
class Metric {
  @HiveField(0)
  @JsonKey(name: 'amount')
  double? amount;

  @HiveField(1)
  @JsonKey(name: 'unitShort')
  String? unitShort;

  @HiveField(2)
  @JsonKey(name: 'unitLong')
  String? unitLong;

  Metric(this.amount, this.unitShort, this.unitLong);

  factory Metric.fromJson(Map<String, dynamic> json) => _$MetricFromJson(json);

  Map<String, dynamic> toJson() => _$MetricToJson(this);
}
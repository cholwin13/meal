import 'package:json_annotation/json_annotation.dart';

part 'metric_vo.g.dart';

@JsonSerializable()
class Metric {
  @JsonKey(name: 'amount')
  double? amount;

  @JsonKey(name: 'unitShort')
  String? unitShort;

  @JsonKey(name: 'unitLong')
  String? unitLong;

  Metric(this.amount, this.unitShort, this.unitLong);

  factory Metric.fromJson(Map<String, dynamic> json) => _$MetricFromJson(json);

  Map<String, dynamic> toJson() => _$MetricToJson(this);
}
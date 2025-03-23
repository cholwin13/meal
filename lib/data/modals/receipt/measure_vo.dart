import 'package:json_annotation/json_annotation.dart';
import 'metric_vo.dart';

part 'measure_vo.g.dart';

@JsonSerializable()
class MeasuresVO {
  @JsonKey(name: 'us')
  Metric? us;

  @JsonKey(name: 'metric')
  Metric? metric;

  MeasuresVO(this.us, this.metric);

  factory MeasuresVO.fromJson(Map<String, dynamic> json) => _$MeasuresVOFromJson(json);

  Map<String, dynamic> toJson() => _$MeasuresVOToJson(this);
}
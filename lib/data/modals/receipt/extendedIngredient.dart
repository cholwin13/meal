import 'package:json_annotation/json_annotation.dart';
import 'measure_vo.dart';

part 'extendedIngredient.g.dart';

@JsonSerializable()
class ExtendedIngredient {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'aisle')
  String? aisle;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'consistency')
  String? consistency;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'nameClean')
  String? nameClean;

  @JsonKey(name: 'original')
  String? original;

  @JsonKey(name: 'originalName')
  String? originalName;

  @JsonKey(name: 'amount')
  double? amount;

  @JsonKey(name: 'unit')
  String? unit;

  @JsonKey(name: 'measures')
  MeasuresVO? measures;

  ExtendedIngredient(
      this.id,
      this.aisle,
      this.image,
      this.consistency,
      this.name,
      this.nameClean,
      this.original,
      this.originalName,
      this.amount,
      this.unit,
      this.measures);

  factory ExtendedIngredient.fromJson(Map<String, dynamic> json) => _$ExtendedIngredientFromJson(json);

  Map<String, dynamic> toJson() => _$ExtendedIngredientToJson(this);
}

import 'dart:typed_data';

import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../core/utils/uint8list_converter.dart';
import 'measure_vo.dart';

part 'extendedIngredient.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class ExtendedIngredient {
  @HiveField(0)
  @JsonKey(name: 'id')
  int? id;

  @HiveField(1)
  @JsonKey(name: 'aisle')
  String? aisle;

  @HiveField(2)
  @JsonKey(name: 'image')
  String? image;

  @HiveField(3)
  @JsonKey(name: 'consistency')
  String? consistency;

  @HiveField(4)
  @JsonKey(name: 'name')
  String? name;

  @HiveField(5)
  @JsonKey(name: 'nameClean')
  String? nameClean;

  @HiveField(6)
  @JsonKey(name: 'original')
  String? original;

  @HiveField(7)
  @JsonKey(name: 'originalName')
  String? originalName;

  @HiveField(8)
  @JsonKey(name: 'amount')
  double? amount;

  @HiveField(9)
  @JsonKey(name: 'unit')
  String? unit;

  @HiveField(10)
  @JsonKey(name: 'measures')
  MeasuresVO? measures;

  @HiveField(11)
  @JsonKey(name: 'imageBytes')
  @Uint8ListConverter()
  Uint8List? imageBytes;

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
      this.measures,
      this.imageBytes
      );

  factory ExtendedIngredient.fromJson(Map<String, dynamic> json) => _$ExtendedIngredientFromJson(json);

  Map<String, dynamic> toJson() => _$ExtendedIngredientToJson(this);
}

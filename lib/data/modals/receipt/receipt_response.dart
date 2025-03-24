
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meal/domain/entities/receipt_list_entity.dart';

import 'extendedIngredient.dart';

part 'receipt_response.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class ReceiptResponse {
  @HiveField(0)
  @JsonKey(name: 'id')
  int? id;

  @HiveField(1)
  @JsonKey(name: 'image')
  String? image;

  @HiveField(2)
  @JsonKey(name: 'imageType')
  String? imageType;

  @HiveField(3)
  @JsonKey(name: 'title')
  String? title;

  @HiveField(4)
  @JsonKey(name: 'readyInMinutes')
  int? readyInMinutes;

  @HiveField(5)
  @JsonKey(name: 'servings')
  int? servings;

  @HiveField(6)
  @JsonKey(name: 'sourceUrl')
  String? sourceUrl;

  @HiveField(7)
  @JsonKey(name: 'vegetarian')
  bool? vegetarian;

  @HiveField(8)
  @JsonKey(name: 'vegan')
  bool? vegan;

  @HiveField(9)
  @JsonKey(name: 'glutenFree')
  bool? glutenFree;

  @HiveField(10)
  @JsonKey(name: 'dairyFree')
  bool? dairyFree;

  @HiveField(11)
  @JsonKey(name: 'veryHealthy')
  bool? veryHealthy;

  @HiveField(12)
  @JsonKey(name: 'cheap')
  bool? cheap;

  @HiveField(13)
  @JsonKey(name: 'veryPopular')
  bool? veryPopular;

  @HiveField(14)
  @JsonKey(name: 'sustainable')
  bool? sustainable;

  @HiveField(15)
  @JsonKey(name: 'lowFodmap')
  bool? lowFodmap;

  @HiveField(16)
  @JsonKey(name: 'weightWatcherSmartPoints')
  int? weightWatcherSmartPoints;

  @HiveField(17)
  @JsonKey(name: 'gaps')
  String? gaps;

  @HiveField(18)
  @JsonKey(name: 'preparationMinutes')
  int? preparationMinutes;

  @HiveField(19)
  @JsonKey(name: 'cookingMinutes')
  int? cookingMinutes;

  @HiveField(20)
  @JsonKey(name: 'aggregateLikes')
  int? aggregateLikes;

  @HiveField(21)
  @JsonKey(name: 'healthScore')
  int? healthScore;

  @HiveField(22)
  @JsonKey(name: 'creditsText')
  String? creditsText;

  @HiveField(23)
  @JsonKey(name: 'sourceName')
  String? sourceName;

  @HiveField(24)
  @JsonKey(name: 'pricePerServing')
  double? pricePerServing;

  @HiveField(25)
  @JsonKey(name: 'extendedIngredients')
  List<ExtendedIngredient>? extendedIngredients;

  @HiveField(26)
  @JsonKey(name: 'instructions')
  String? instructions;

  ReceiptResponse(
      this.id,
      this.image,
      this.imageType,
      this.title,
      this.readyInMinutes,
      this.servings,
      this.sourceUrl,
      this.vegetarian,
      this.vegan,
      this.glutenFree,
      this.dairyFree,
      this.veryHealthy,
      this.cheap,
      this.veryPopular,
      this.sustainable,
      this.lowFodmap,
      this.weightWatcherSmartPoints,
      this.gaps,
      this.preparationMinutes,
      this.cookingMinutes,
      this.aggregateLikes,
      this.healthScore,
      this.creditsText,
      this.sourceName,
      this.pricePerServing,
      this.extendedIngredients,
      this.instructions);

  factory ReceiptResponse.fromJson(Map<String, dynamic> json) => _$ReceiptResponseFromJson(json);

  Map<String, dynamic> json() => _$ReceiptResponseToJson(this);

  ReceiptListEntity toEntity() => ReceiptListEntity(
      id: id ?? 0,
      image: image ?? "",
      imageType: imageType ?? "",
      title: title ?? "",
      readyInMinutes: readyInMinutes ?? 0,
      servings: servings ?? 0,
      sourceUrl: sourceUrl ?? "",
      vegetarian: vegetarian ?? false,
      vegan: vegan ?? false,
      glutenFree: glutenFree ?? false,
      dairyFree: dairyFree ?? false,
      veryHealthy: veryHealthy ?? false,
      cheap: cheap ?? false,
      veryPopular: veryPopular ?? false,
      sustainable: sustainable ?? false,
      lowFodmap: lowFodmap ?? false,
      weightWatcherSmartPoints: weightWatcherSmartPoints ?? 0,
      gaps: gaps ?? "",
      preparationMinutes: preparationMinutes ?? 0,
      cookingMinutes: cookingMinutes ?? 0,
      aggregateLikes: aggregateLikes ?? 0,
      healthScore: healthScore ?? 0,
      creditsText: creditsText ?? "",
      sourceName: sourceName ?? "",
      pricePerServing: pricePerServing ?? 0.0,
      extendedIngredients: extendedIngredients ?? [],
      instructions: instructions ?? ""
  );
}
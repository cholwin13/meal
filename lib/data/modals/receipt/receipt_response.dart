
import 'package:json_annotation/json_annotation.dart';
import 'package:meal/domain/entities/receipt_list_entity.dart';

import 'extendedIngredient.dart';

part 'receipt_response.g.dart';

@JsonSerializable()
class ReceiptResponse {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'imageType')
  String? imageType;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'readyInMinutes')
  int? readyInMinutes;

  @JsonKey(name: 'servings')
  int? servings;

  @JsonKey(name: 'sourceUrl')
  String? sourceUrl;

  @JsonKey(name: 'vegetarian')
  bool? vegetarian;

  @JsonKey(name: 'vegan')
  bool? vegan;

  @JsonKey(name: 'glutenFree')
  bool? glutenFree;

  @JsonKey(name: 'dairyFree')
  bool? dairyFree;

  @JsonKey(name: 'veryHealthy')
  bool? veryHealthy;

  @JsonKey(name: 'cheap')
  bool? cheap;

  @JsonKey(name: 'veryPopular')
  bool? veryPopular;

  @JsonKey(name: 'sustainable')
  bool? sustainable;

  @JsonKey(name: 'lowFodmap')
  bool? lowFodmap;

  @JsonKey(name: 'weightWatcherSmartPoints')
  int? weightWatcherSmartPoints;

  @JsonKey(name: 'gaps')
  String? gaps;

  @JsonKey(name: 'preparationMinutes')
  int? preparationMinutes;

  @JsonKey(name: 'cookingMinutes')
  int? cookingMinutes;

  @JsonKey(name: 'aggregateLikes')
  int? aggregateLikes;

  @JsonKey(name: 'healthScore')
  int? healthScore;

  @JsonKey(name: 'creditsText')
  String? creditsText;

  @JsonKey(name: 'sourceName')
  String? sourceName;

  @JsonKey(name: 'pricePerServing')
  double? pricePerServing;

  @JsonKey(name: 'extendedIngredients')
  List<ExtendedIngredient>? extendedIngredients;

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
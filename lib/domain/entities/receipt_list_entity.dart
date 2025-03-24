import '../../data/modals/receipt/extendedIngredient.dart';

class ReceiptListEntity {
  int id;
  String image;
  String imageType;
  String title;
  int readyInMinutes;
  int servings;
  String sourceUrl;
  bool vegetarian;
  bool vegan;
  bool glutenFree;
  bool dairyFree;
  bool veryHealthy;
  bool cheap;
  bool veryPopular;
  bool sustainable;
  bool lowFodmap;
  int weightWatcherSmartPoints;
  String gaps;
  int preparationMinutes;
  int cookingMinutes;
  int aggregateLikes;
  int healthScore;
  String creditsText;
  String sourceName;
  double pricePerServing;
  List<ExtendedIngredient> extendedIngredients;
  String instructions;

  ReceiptListEntity({
    required this.id,
    required this.image,
    required this.imageType,
    required this.title,
    required this.readyInMinutes,
    required this.servings,
    required this.sourceUrl,
    required this.vegetarian,
    required this.vegan,
    required this.glutenFree,
    required this.dairyFree,
    required this.veryHealthy,
    required this.cheap,
    required this.veryPopular,
    required this.sustainable,
    required this.lowFodmap,
    required this.weightWatcherSmartPoints,
    required this.gaps,
    required this.preparationMinutes,
    required this.cookingMinutes,
    required this.aggregateLikes,
    required this.healthScore,
    required this.creditsText,
    required this.sourceName,
    required this.pricePerServing,
    required this.extendedIngredients,
    required this.instructions,
  });
}
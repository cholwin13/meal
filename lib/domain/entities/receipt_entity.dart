class ReceiptEntity {
  final int? id;
  final String? title;
  final String? image;
  final List<String>? dishTypes;
  final List<ExtendedIngredientsList>? extendedIngredients;
  final String? summary;

  ReceiptEntity(this.id, this.title, this.image, this.dishTypes, this.extendedIngredients, this.summary);
}


class ExtendedIngredientsList {
  final String? aisle;
  final int? amount;
  final String? consitency;
  final int? id;
  final String? image;
  final String? name;

  ExtendedIngredientsList(this.aisle, this.amount, this.consitency, this.id, this.image, this.name);
}
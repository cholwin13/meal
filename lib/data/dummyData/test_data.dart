import 'package:meal/domain/entities/receipt_entity.dart';

const List<Map<String, dynamic>> pickupData = [

  {
    'id': 1,
    "title": "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
    "image": "https://spoonacular.com/recipeImages/716429-556x370.jpg",
    "dishTypes": [
      "lunch",
      "main course",
      "main dish",
      "dinner"
    ],
    "extendedIngredients": [
      {
        "aisle": "Milk, Eggs, Other Dairy",
        "amount": 1,
        "consitency": "solid",
        "id": 1001,
        "image": "butter-sliced.jpg",
        "name": "butter"
      },
      {
        "aisle": "Produce",
        "amount": 2,
        "consitency": "solid",
        "id": 10011135,
        "image": "cauliflower.jpg",
        "name": "cauliflower florets"
      },
      {
        "aisle": "Cheese",
        "amount": 2,
        "consitency": "solid",
        "id": 1041009,
        "image": "cheddar-cheese.png",
        "name": "cheese"
      },
      {
        "aisle": "Oil, Vinegar, Salad Dressing",
        "amount": 1,
        "consitency": "liquid",
        "id": 1034053,
        "image": "olive-oil.jpg",
        "name": "extra virgin olive oil"
      },
      {
        "aisle": "Produce",
        "amount": 5,
        "consitency": "solid",
        "id": 11215,
        "image": "garlic.jpg",
        "name": "garlic"
      },
      {
        "aisle": "Pasta and Rice",
        "amount": 6,
        "consitency": "solid",
        "id": 20420,
        "image": "fusilli.jpg",
        "name": "pasta"
      },
      {
        "aisle": "Spices and Seasonings",
        "amount": 2,
        "consitency": "solid",
        "id": 1032009,
        "image": "red-pepper-flakes.jpg",
        "name": "red pepper flakes"
      },
      {
        "aisle": "Spices and Seasonings",
        "amount": 2,
        "consitency": "solid",
        "id": 1102047,
        "image": "salt-and-pepper.jpg",
        "name": "salt and pepper"
      },
      {
        "aisle": "Produce",
        "amount": 3,
        "consitency": "solid",
        "id": 11291,
        "image": "spring-onions.jpg",
        "name": "scallions"
      },
      {
        "aisle": "Alcoholic Beverages",
        "amount": 2,
        "consitency": "liquid",
        "id": 14106,
        "image": "white-wine.jpg",
        "name": "white wine"
      }
    ],
  }
];

List<ReceiptEntity> dummyData = [
  ReceiptEntity(
    1,
      "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
      "https://spoonacular.com/recipeImages/716429-556x370.jpg",
      [
        "lunch",
        "main course",
        "main dish",
        "dinner"
      ],
    [
      ExtendedIngredientsList("Milk, Eggs, Other Dairy", 1, "solid", 1001, "butter-sliced.jpg", "butter"),
      ExtendedIngredientsList("Produce", 2, "solid", 10011135, "cauliflower.jpg", "cauliflower florets"),
      ExtendedIngredientsList("Cheese", 2, "solid", 1041009, "cheddar-cheese.png", "cheese"),
      ExtendedIngredientsList("Oil, Vinegar, Salad Dressing", 1, "liquid", 1034053, "olive-oil.jpg", "extra virgin olive oil"),
      ExtendedIngredientsList("Produce", 2, "solid", 11215, "garlic.jpg", "garlic"),
      ExtendedIngredientsList("Pasta and Rice", 6, "solid", 20420, "fusilli.jpg", "pasta")
    ],
    "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs might be a good recipe to expand your main course repertoire. One portion of this dish contains approximately &lt;b&gt;19g of protein &lt;/b&gt;,  &lt;b&gt;20g of fat &lt;/b&gt;, and a total of  &lt;b&gt;584 calories &lt;/b&gt;. For  &lt;b&gt;\$1.63 per serving &lt;/b&gt;, this recipe  &lt;b&gt;covers 23% &lt;/b&gt; of your daily requirements of vitamins and minerals. This recipe serves 2. It is brought to you by fullbellysisters.blogspot.com. 209 people were glad they tried this recipe. A mixture of scallions, salt and pepper, white wine, and a handful of other ingredients are all it takes to make this recipe so scrumptious. From preparation to the plate, this recipe takes approximately  &lt;b&gt;45 minutes &lt;/b&gt;. All things considered, we decided this recipe  &lt;b&gt;deserves a spoonacular score of 83% &lt;/b&gt;. This score is awesome. If you like this recipe, take a look at these similar recipes: &lt;a href=\"https://spoonacular.com/recipes/cauliflower-gratin-with-garlic-breadcrumbs-318375\">Cauliflower Gratin with Garlic Breadcrumbs&lt;/a&gt;, &lt; href=\"https://spoonacular.com/recipes/pasta-with-cauliflower-sausage-breadcrumbs-30437\">Pasta With Cauliflower, Sausage, & Breadcrumbs&lt;/a&gt;, and &lt;a href=\"https://spoonacular.com/recipes/pasta-with-roasted-cauliflower-parsley-and-breadcrumbs-30738\">Pasta With Roasted Cauliflower, Parsley, And Breadcrumbs&lt;/a&gt;.",
  ),
  ReceiptEntity(
    2,
    "Spaghetti Bolognese",
    "https://spoonacular.com/recipeImages/716429-556x370.jpg",
    [
      "lunch",
      "main course",
      "main dish",
      "dinner"
    ],
    [
      ExtendedIngredientsList("Milk, Eggs, Other Dairy", 1, "solid", 1001, "butter-sliced.jpg", "butter"),
      ExtendedIngredientsList("Produce", 2, "solid", 10011135, "cauliflower.jpg", "cauliflower florets"),
      ExtendedIngredientsList("Cheese", 2, "solid", 1041009, "cheddar-cheese.png", "cheese"),
      ExtendedIngredientsList("Oil, Vinegar, Salad Dressing", 1, "liquid", 1034053, "olive-oil.jpg", "extra virgin olive oil"),
      ExtendedIngredientsList("Produce", 2, "solid", 11215, "garlic.jpg", "garlic"),
      ExtendedIngredientsList("Pasta and Rice", 6, "solid", 20420, "fusilli.jpg", "pasta")
    ],
    "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs might be a good recipe to expand your main course repertoire. One portion of this dish contains approximately &lt;b&gt;19g of protein &lt;/b&gt;,  &lt;b&gt;20g of fat &lt;/b&gt;, and a total of  &lt;b&gt;584 calories &lt;/b&gt;. For  &lt;b&gt;\$1.63 per serving &lt;/b&gt;, this recipe  &lt;b&gt;covers 23% &lt;/b&gt; of your daily requirements of vitamins and minerals. This recipe serves 2. It is brought to you by fullbellysisters.blogspot.com. 209 people were glad they tried this recipe. A mixture of scallions, salt and pepper, white wine, and a handful of other ingredients are all it takes to make this recipe so scrumptious. From preparation to the plate, this recipe takes approximately  &lt;b&gt;45 minutes &lt;/b&gt;. All things considered, we decided this recipe  &lt;b&gt;deserves a spoonacular score of 83% &lt;/b&gt;. This score is awesome. If you like this recipe, take a look at these similar recipes: &lt;a href=\"https://spoonacular.com/recipes/cauliflower-gratin-with-garlic-breadcrumbs-318375\">Cauliflower Gratin with Garlic Breadcrumbs&lt;/a&gt;, &lt; href=\"https://spoonacular.com/recipes/pasta-with-cauliflower-sausage-breadcrumbs-30437\">Pasta With Cauliflower, Sausage, & Breadcrumbs&lt;/a&gt;, and &lt;a href=\"https://spoonacular.com/recipes/pasta-with-roasted-cauliflower-parsley-and-breadcrumbs-30738\">Pasta With Roasted Cauliflower, Parsley, And Breadcrumbs&lt;/a&gt;.",
  ),
  ReceiptEntity(
    3,
    "Chicken Curry",
    "https://spoonacular.com/recipeImages/716429-556x370.jpg",
    [
      "lunch",
      "main course",
      "main dish",
      "dinner"
    ],
    [
      ExtendedIngredientsList("Milk, Eggs, Other Dairy", 1, "solid", 1001, "butter-sliced.jpg", "butter"),
      ExtendedIngredientsList("Produce", 2, "solid", 10011135, "cauliflower.jpg", "cauliflower florets"),
      ExtendedIngredientsList("Cheese", 2, "solid", 1041009, "cheddar-cheese.png", "cheese"),
      ExtendedIngredientsList("Oil, Vinegar, Salad Dressing", 1, "liquid", 1034053, "olive-oil.jpg", "extra virgin olive oil"),
      ExtendedIngredientsList("Produce", 2, "solid", 11215, "garlic.jpg", "garlic"),
      ExtendedIngredientsList("Pasta and Rice", 6, "solid", 20420, "fusilli.jpg", "pasta")
    ],
    "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs might be a good recipe to expand your main course repertoire. One portion of this dish contains approximately &lt;b&gt;19g of protein &lt;/b&gt;,  &lt;b&gt;20g of fat &lt;/b&gt;, and a total of  &lt;b&gt;584 calories &lt;/b&gt;. For  &lt;b&gt;\$1.63 per serving &lt;/b&gt;, this recipe  &lt;b&gt;covers 23% &lt;/b&gt; of your daily requirements of vitamins and minerals. This recipe serves 2. It is brought to you by fullbellysisters.blogspot.com. 209 people were glad they tried this recipe. A mixture of scallions, salt and pepper, white wine, and a handful of other ingredients are all it takes to make this recipe so scrumptious. From preparation to the plate, this recipe takes approximately  &lt;b&gt;45 minutes &lt;/b&gt;. All things considered, we decided this recipe  &lt;b&gt;deserves a spoonacular score of 83% &lt;/b&gt;. This score is awesome. If you like this recipe, take a look at these similar recipes: &lt;a href=\"https://spoonacular.com/recipes/cauliflower-gratin-with-garlic-breadcrumbs-318375\">Cauliflower Gratin with Garlic Breadcrumbs&lt;/a&gt;, &lt; href=\"https://spoonacular.com/recipes/pasta-with-cauliflower-sausage-breadcrumbs-30437\">Pasta With Cauliflower, Sausage, & Breadcrumbs&lt;/a&gt;, and &lt;a href=\"https://spoonacular.com/recipes/pasta-with-roasted-cauliflower-parsley-and-breadcrumbs-30738\">Pasta With Roasted Cauliflower, Parsley, And Breadcrumbs&lt;/a&gt;.",
  ),
  ReceiptEntity(
    4,
    "Chocolate Cake",
    "https://spoonacular.com/recipeImages/716429-556x370.jpg",
    [
      "lunch",
      "main course",
      "main dish",
      "dinner"
    ],
    [
      ExtendedIngredientsList("Milk, Eggs, Other Dairy", 1, "solid", 1001, "butter-sliced.jpg", "butter"),
      ExtendedIngredientsList("Produce", 2, "solid", 10011135, "cauliflower.jpg", "cauliflower florets"),
      ExtendedIngredientsList("Cheese", 2, "solid", 1041009, "cheddar-cheese.png", "cheese"),
      ExtendedIngredientsList("Oil, Vinegar, Salad Dressing", 1, "liquid", 1034053, "olive-oil.jpg", "extra virgin olive oil"),
      ExtendedIngredientsList("Produce", 2, "solid", 11215, "garlic.jpg", "garlic"),
      ExtendedIngredientsList("Pasta and Rice", 6, "solid", 20420, "fusilli.jpg", "pasta")
    ],
    "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs might be a good recipe to expand your main course repertoire. One portion of this dish contains approximately &lt;b&gt;19g of protein &lt;/b&gt;,  &lt;b&gt;20g of fat &lt;/b&gt;, and a total of  &lt;b&gt;584 calories &lt;/b&gt;. For  &lt;b&gt;\$1.63 per serving &lt;/b&gt;, this recipe  &lt;b&gt;covers 23% &lt;/b&gt; of your daily requirements of vitamins and minerals. This recipe serves 2. It is brought to you by fullbellysisters.blogspot.com. 209 people were glad they tried this recipe. A mixture of scallions, salt and pepper, white wine, and a handful of other ingredients are all it takes to make this recipe so scrumptious. From preparation to the plate, this recipe takes approximately  &lt;b&gt;45 minutes &lt;/b&gt;. All things considered, we decided this recipe  &lt;b&gt;deserves a spoonacular score of 83% &lt;/b&gt;. This score is awesome. If you like this recipe, take a look at these similar recipes: &lt;a href=\"https://spoonacular.com/recipes/cauliflower-gratin-with-garlic-breadcrumbs-318375\">Cauliflower Gratin with Garlic Breadcrumbs&lt;/a&gt;, &lt; href=\"https://spoonacular.com/recipes/pasta-with-cauliflower-sausage-breadcrumbs-30437\">Pasta With Cauliflower, Sausage, & Breadcrumbs&lt;/a&gt;, and &lt;a href=\"https://spoonacular.com/recipes/pasta-with-roasted-cauliflower-parsley-and-breadcrumbs-30738\">Pasta With Roasted Cauliflower, Parsley, And Breadcrumbs&lt;/a&gt;.",
  ),
  ReceiptEntity(
    5,
    "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
    "https://spoonacular.com/recipeImages/716429-556x370.jpg",
    [
      "lunch",
      "main course",
      "main dish",
      "dinner"
    ],
    [
      ExtendedIngredientsList("Milk, Eggs, Other Dairy", 1, "solid", 1001, "butter-sliced.jpg", "butter"),
      ExtendedIngredientsList("Produce", 2, "solid", 10011135, "cauliflower.jpg", "cauliflower florets"),
      ExtendedIngredientsList("Cheese", 2, "solid", 1041009, "cheddar-cheese.png", "cheese"),
      ExtendedIngredientsList("Oil, Vinegar, Salad Dressing", 1, "liquid", 1034053, "olive-oil.jpg", "extra virgin olive oil"),
      ExtendedIngredientsList("Produce", 2, "solid", 11215, "garlic.jpg", "garlic"),
      ExtendedIngredientsList("Pasta and Rice", 6, "solid", 20420, "fusilli.jpg", "pasta")
    ],
    "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs might be a good recipe to expand your main course repertoire. One portion of this dish contains approximately &lt;b&gt;19g of protein &lt;/b&gt;,  &lt;b&gt;20g of fat &lt;/b&gt;, and a total of  &lt;b&gt;584 calories &lt;/b&gt;. For  &lt;b&gt;\$1.63 per serving &lt;/b&gt;, this recipe  &lt;b&gt;covers 23% &lt;/b&gt; of your daily requirements of vitamins and minerals. This recipe serves 2. It is brought to you by fullbellysisters.blogspot.com. 209 people were glad they tried this recipe. A mixture of scallions, salt and pepper, white wine, and a handful of other ingredients are all it takes to make this recipe so scrumptious. From preparation to the plate, this recipe takes approximately  &lt;b&gt;45 minutes &lt;/b&gt;. All things considered, we decided this recipe  &lt;b&gt;deserves a spoonacular score of 83% &lt;/b&gt;. This score is awesome. If you like this recipe, take a look at these similar recipes: &lt;a href=\"https://spoonacular.com/recipes/cauliflower-gratin-with-garlic-breadcrumbs-318375\">Cauliflower Gratin with Garlic Breadcrumbs&lt;/a&gt;, &lt; href=\"https://spoonacular.com/recipes/pasta-with-cauliflower-sausage-breadcrumbs-30437\">Pasta With Cauliflower, Sausage, & Breadcrumbs&lt;/a&gt;, and &lt;a href=\"https://spoonacular.com/recipes/pasta-with-roasted-cauliflower-parsley-and-breadcrumbs-30738\">Pasta With Roasted Cauliflower, Parsley, And Breadcrumbs&lt;/a&gt;.",
  ),
];
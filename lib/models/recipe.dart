class Recipe {
  final String recipeName;
  final String recipeAuthor;
  final String amountOfIngredients;
  final String recipeDifficulty;
  final String cookingTime;
  final int totalLikes;
  final String imageURL;
  final bool isFavourite;
  final String description;
  final List<String> ingredients;
  final List<String> directions;
  final int cookTime;

  Recipe({
    required this.recipeName,
    required this.recipeAuthor,
    required this.amountOfIngredients,
    required this.recipeDifficulty,
    required this.cookingTime,
    required this.totalLikes,
    required this.imageURL,
    this.isFavourite = false,
    required this.description,
    required this.ingredients,
    required this.directions,
    required this.cookTime,
  });
}

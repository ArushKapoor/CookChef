import 'Recipe.dart';
import 'package:cook_chef/Networking/NetworkingHelper.dart';

class RecipeHandler {
  List<Recipe> recipies = [];
  NetworkingHelper networkingHelper = NetworkingHelper();
  Future<List<Recipe>> recipeFromIngredients(String ingredients) async {
    final recipiesFromJson =
        await networkingHelper.recipeByIngredient(ingredients);
    //print(recipiesFromJson[0]['title']);
    recipies.add(Recipe(id: 123, recipeImageUrl: 'hi', recipeName: 'title'));
    print(recipies);
    return recipies;
  }
}

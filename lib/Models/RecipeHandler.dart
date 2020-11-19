import 'Recipe.dart';
import 'package:cook_chef/Networking/NetworkingHelper.dart';

class RecipeHandler {
  List<Recipe> recipies = [];
  List<List> recipe = [];
  NetworkingHelper networkingHelper = NetworkingHelper();
  Future<List<Recipe>> recipeFromIngredients(String ingredients) async {
    final recipiesFromJson =
        await networkingHelper.recipeByIngredient(ingredients);
    //print(recipiesFromJson[0]['title']);
    //recipies.add(Recipe(id: 123, recipeImageUrl: 'hi', recipeName: 'title'));
    for (int i = 0; i < 20; i++) {
      if (recipiesFromJson[0]['title'] != null) {
        recipies.add(Recipe(
            id: recipiesFromJson[0]['id'],
            recipeImageUrl: recipiesFromJson[0]['image'],
            recipeName: recipiesFromJson[0]['title']));
      } else {
        break;
      }
    }
    print(recipies[0].recipeName);
    return recipies;
  }

  Future<List<List>> recipeById(int id) async {
    final recipeFromJson = await networkingHelper.recipe(id);
    int i = 0;
    recipe[0].add('HI');
    recipe[1].add('BYE');
    print(recipe[0]);
    //while (true) {
    //   i++;
    //   if (recipeFromJson['extendedIngredients'][i]['original'] != null) {
    //     recipe[0].add(recipeFromJson['extendedIngredients'][i]['original']);
    //   } else {
    //     break;
    //   }
    // }
    // i = 0;
    // while (true) {
    //   i++;
    //   if (recipeFromJson['analyzedInstructions'][i]['steps'][0]['step'] !=
    //       null) {
    //     recipe[0].add(recipeFromJson['extendedIngredients'][i]['original']);
    //   } else {
    //     break;
    //   }
    // }
    // print(recipe[0]);
    return recipe;
  }
}

//extendedIngredients[0].original
//analyzedInstructions[0].steps[0].step
//extendedIngredients[0].original

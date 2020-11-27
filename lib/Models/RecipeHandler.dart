import 'Recipe.dart';
import 'package:cook_chef/Networking/NetworkingHelper.dart';

class RecipeHandler {
  List<Recipe> recipies = [];
  List recipe = [];
  List ingredients = [];
  List steps = [];
  NetworkingHelper networkingHelper = NetworkingHelper();
  Future<List<Recipe>> recipeFromIngredients(String ingredients) async {
    final recipiesFromJson =
        await networkingHelper.recipeByIngredient(ingredients);
    //print(recipiesFromJson[0]['title']);
    //recipies.add(Recipe(id: 123, recipeImageUrl: 'hi', recipeName: 'title'));
    recipies.clear();
    for (int i = 0; i < 100; i++) {
      try {
        if (recipiesFromJson[i]['title'] != null) {
          recipies.add(Recipe(
              id: recipiesFromJson[i]['id'],
              recipeImageUrl: recipiesFromJson[i]['image'],
              recipeName: recipiesFromJson[i]['title']));
        }
      } catch (e) {
        break;
      }
    }
    // for (int i = 0; i < recipies.length - 1; i++) {
    //   print(recipies[i].id);
    //   print(recipies[i].recipeName);
    // }
    //print(recipies[0].id);
    return recipies;
  }

  void ingredientsList(dynamic recipe) {
    int i = 0;
    // ingredients.add('value');
    // steps.add('value');
    // print(recipe[0][0]);
    ingredients.clear();
    while (true) {
      i++;
      try {
        if (recipe['extendedIngredients'][i]['original'] != null) {
          ingredients.add(recipe['extendedIngredients'][i]['original']);
        }
      } catch (e) {
        break;
      }
    }
  }

  void stepsList(dynamic recipe) {
    steps.clear();
    int j = 0;
    while (true) {
      // int  j = 0;
      j++;
      try {
        if (recipe['analyzedInstructions'][0]['steps'][j]['step'] != null) {
          steps.add(recipe['analyzedInstructions'][0]['steps'][j]['step']);
        } else {
          break;
        }
      } catch (e) {
        break;
      }
    }
  }

  Future<List> recipeById(int id) async {
    final recipeFromJson = await networkingHelper.recipe(id);
    ingredientsList(recipeFromJson);
    stepsList(recipeFromJson);

    recipe.add(ingredients);
    recipe.add(steps);
    print(recipe[0]);
    print(recipe[1]);
    return recipe;
  }
}

//extendedIngredients[0].original
//analyzedInstructions[0].steps[0].step
//extendedIngredients[0].original

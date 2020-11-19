import 'package:cook_chef/Apis/Apis.dart';
import 'Networking.dart';

class NetworkingHelper {
  NetworkingHelper({this.ingredients, this.recipeId});
  String api = Apis.spoonacularApi;
  String mainUrlPart = 'https://api.spoonacular.com/recipes/';
  String recipeId;
  String ingredients;
  Networking _networking = Networking();

  Future<void> recipeByIngredient() async {
    await _networking.getData(
        '$mainUrlPart/findByIngredients?apiKey=$api&ingredients=$ingredients');
  }

  Future<void> recipe() async {
    await _networking.getData('$mainUrlPart/$recipeId/information&apiKey=$api');
  }
}
//https://api.spoonacular.com/recipes/findByIngredients?apiKey=029a025fd39e4947bd4d25fc99380aa3&ingredients=apples,+flour,+sugar&number=10&limitLicense=true
//https://api.spoonacular.com/recipes/634793/information?includeNutrition=false&apiKey=029a025fd39e4947bd4d25fc99380aa3

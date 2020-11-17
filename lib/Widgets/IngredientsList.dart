import 'package:flutter/material.dart';
import 'ingredientsTile.dart';
import 'package:cook_chef/Models/Ingredients.dart';

class IngredientsList extends StatefulWidget {
  @override
  _IngredientsListState createState() => _IngredientsListState();
}

// List<Ingredients> ingredients = [
//   // Ingredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
//   // Ingredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
//   // Ingredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
//   // Ingredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
//   // Ingredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
//   // Ingredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
//   // Ingredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
// ];

List<Ingredients> ingredients = new List<Ingredients>();

class _IngredientsListState extends State<IngredientsList> {
  @override
  Widget build(BuildContext context) {
    print(ingredients.length);

    Ingredients ingredient = new Ingredients(text: 'Hello');
    ingredients.add(ingredient);
    print(ingredients);
    return ListView(
      children: [
        IngredientTile(),
        IngredientTile(),
        IngredientTile(),
        IngredientTile(),
        IngredientTile(),
        IngredientTile(),
      ],

      //print(ingredientsData.ingredients[0].text);
    );
  }
}

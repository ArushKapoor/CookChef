import 'package:cook_chef/Models/Ingredients.dart';
import 'package:cook_chef/Models/IngredientsHandler.dart';
import 'package:flutter/material.dart';
import 'package:cook_chef/Widgets/ingredientsTile.dart';

class IngredientsList extends StatefulWidget {
  @override
  _IngredientsListState createState() => _IngredientsListState();
}

List<Ingredients> selectedIngredients = new List<Ingredients>();
IngredientsHandler ingredientsHandler = IngredientsHandler();

class _IngredientsListState extends State<IngredientsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ingredientsHandler.ingredients.length,
      itemBuilder: (context, index) {
        final ingredient = ingredientsHandler.ingredients[index];
        return IngredientTile(
          text: ingredient.text,
          imageUrl: ingredient.imageUrl,
          isChecked: ingredient.isChecked,
          isSelectedIngredient: false,
          toggleCallback: () {
            setState(() {
              ingredientsHandler.checkBoxToggler(ingredient);
              if (ingredient.isChecked) {
                selectedIngredients.add(ingredient);
              } else {
                selectedIngredients.remove(ingredient);
              }
            });
          },
        );
      },
    );
  }
}

import 'package:cook_chef/Models/IngredientsHandler.dart';
import 'package:flutter/material.dart';
import 'package:cook_chef/Widgets/ingredientsTile.dart';

class IngredientsList extends StatefulWidget {
  @override
  _IngredientsListState createState() => _IngredientsListState();
}

class _IngredientsListState extends State<IngredientsList> {
  IngredientsHandler ingredientsHandler = IngredientsHandler();
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
            });
          },
        );
      },
    );
  }
}

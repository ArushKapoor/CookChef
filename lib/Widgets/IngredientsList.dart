import 'package:cook_chef/Models/Ingredients.dart';
import 'package:cook_chef/Models/IngredientsHandler.dart';
import 'package:flutter/material.dart';
import 'package:cook_chef/Widgets/ingredientsTile.dart';
import 'package:provider/provider.dart';

class IngredientsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<IngredientsHandler>(
      key: key,
      builder: (context, incredientHandling, child) {
        return ListView.builder(
          itemCount: incredientHandling.ingredients.length,
          itemBuilder: (context, index) {
            final ingredient = incredientHandling.ingredients[index];
            return IngredientTile(
              text: ingredient.text,
              imageUrl: ingredient.imageUrl,
              isChecked: ingredient.isChecked,
              isSelectedIngredient: false,
              toggleCallback: () {
                incredientHandling.checkBoxToggler(ingredient);

                if (ingredient.isChecked) {
                  incredientHandling.addSelectedIngredient(ingredient);
                } else {
                  incredientHandling.removeSelectedIngredient(ingredient);
                }
              },
            );
          },
        );
      },
    );
  }
}

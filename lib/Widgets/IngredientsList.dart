import 'package:cook_chef/Models/Ingredient.dart';
import 'package:cook_chef/Models/IngredientsHandler.dart';
import 'package:flutter/material.dart';
import 'package:cook_chef/Widgets/ingredientsTile.dart';
import 'package:provider/provider.dart';

// class IngredientsList extends StatefulWidget {
//   @override
//   _IngredientsListState createState() => _IngredientsListState();
// }

class IngredientsList extends StatelessWidget {
  static List<dynamic> _resultsList = [];

  IngredientsHandler _ingredientsHandler = IngredientsHandler();

  void searchResults() {
    // setState(() {
    _resultsList = _ingredientsHandler.ingredients;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<IngredientsHandler>(
      builder: (context, ingredientHandling, child) {
        return ListView.builder(
          itemCount: _resultsList.length,
          itemBuilder: (context, index) {
            final ingredient = _resultsList[index];
            return IngredientTile(
              text: ingredient.text,
              imageUrl: ingredient.imageUrl,
              isChecked: ingredient.isChecked,
              isSelectedIngredient: false,
              toggleCallback: () {
                ingredientHandling.checkBoxToggler(ingredient);

                if (ingredient.isChecked) {
                  ingredientHandling.addSelectedIngredient(ingredient);
                } else {
                  ingredientHandling.removeSelectedIngredient(ingredient);
                }
              },
            );
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'incredientsTile.dart';
import 'package:cook_chef/Models/Incredients.dart';

class IncredientsList extends StatefulWidget {
  @override
  _IncredientsListState createState() => _IncredientsListState();
}

List<Incredients> incredients = [
  Incredients(
      text: 'Apple',
      imageUrl: 'https://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
  Incredients(
      text: 'Apple',
      imageUrl: 'https://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
  Incredients(
      text: 'Apple',
      imageUrl: 'https://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
  Incredients(
      text: 'Apple',
      imageUrl: 'https://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
  Incredients(
      text: 'Apple',
      imageUrl: 'https://spoonacular.com/cdn/ingredients_100x100/lobster.jpg'),
];

class _IncredientsListState extends State<IncredientsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: incredients.length,
      itemBuilder: (context, index) {
        final incredient = incredients[index];
        return IncredientTile(
          text: incredient.text,
          imageUrl: incredient.imageUrl,
          isChecked: incredient.isChecked,
          toggleCallback: () {
            setState(() {
              incredient.toggleCheckBox();
            });
          },
        );
      },
    );
  }
}

import 'package:cook_chef/Models/IncredientsHandler.dart';
import 'package:flutter/material.dart';
import 'package:cook_chef/Widgets/ingredientsTile.dart';

class IncredientsList extends StatefulWidget {
  @override
  _IncredientsListState createState() => _IncredientsListState();
}

class _IncredientsListState extends State<IncredientsList> {
  IncredientsHandler incredientsHandler = IncredientsHandler();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: incredientsHandler.incredients.length,
      itemBuilder: (context, index) {
        final incredient = incredientsHandler.incredients[index];
        return IncredientTile(
          text: incredient.text,
          imageUrl: incredient.imageUrl,
          isChecked: incredient.isChecked,
          toggleCallback: () {
            setState(() {
              incredientsHandler.checkBoxToggler(incredient);
            });
          },
        );
      },
    );
  }
}

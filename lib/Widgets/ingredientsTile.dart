import 'package:flutter/material.dart';

class IngredientTile extends StatelessWidget {
  IngredientTile(
      {this.imageUrl,
      this.text,
      this.toggleCallback,
      this.isChecked,
      this.isSelectedIngredient});
  final String imageUrl;
  final String text;
  final toggleCallback;
  final isChecked;
  final isSelectedIngredient;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 27,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            flex: 1,
            child: Text(text),
          ),
          isSelectedIngredient == false
              ? GestureDetector(
                  onTap: toggleCallback,
                  child: isChecked
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        )
                      : Icon(Icons.check_circle_outline),
                )
              : GestureDetector(
                  child: Icon(Icons.remove_circle_outline),
                ),
        ],
      ),
    );
  }
}

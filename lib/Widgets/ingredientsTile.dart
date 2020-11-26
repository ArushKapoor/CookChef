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
            radius: 21,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            flex: 1,
            child: Text(
              text,
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          isSelectedIngredient == false
              ? GestureDetector(
                  onTap: toggleCallback,
                  child: isChecked
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 25.0,
                        )
                      : Icon(
                          Icons.check_circle_outline,
                          size: 25.0,
                        ),
                )
              : GestureDetector(
                  onTap: toggleCallback,
                  child: Icon(
                    Icons.remove_circle_outline,
                    size: 25.0,
                  ),
                ),
        ],
      ),
    );
  }
}

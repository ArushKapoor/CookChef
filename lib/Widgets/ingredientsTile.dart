import 'package:flutter/material.dart';

class IngredientTile extends StatefulWidget {
  IngredientTile({this.image, this.text, this.toggleCallback});
  final AssetImage image;
  final String text;
  final toggleCallback;

  @override
  _IngredientTileState createState() => _IngredientTileState();
}

class _IngredientTileState extends State<IngredientTile> {
  bool isChecked = false;
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
              backgroundImage: AssetImage('assets/images/allspice.jpeg'),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            flex: 1,
            child: Text('Ohh Spice'),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: isChecked
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  )
                : Icon(Icons.check_circle_outline),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IncredientTile extends StatelessWidget {
  IncredientTile(
      {this.imageUrl, this.text, this.toggleCallback, this.isChecked});
  final String imageUrl;
  final String text;
  final toggleCallback;
  final isChecked;
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
          GestureDetector(
            onTap: toggleCallback,
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

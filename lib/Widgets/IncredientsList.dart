import 'package:flutter/material.dart';
import 'incredientsTile.dart';
import 'package:cook_chef/Models/Incredients.dart';

class IncredientsList extends StatefulWidget {
  @override
  _IncredientsListState createState() => _IncredientsListState();
}

List<Incredients> incredients = [
  Incredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
  Incredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
  Incredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
  Incredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
  Incredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
  Incredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
  Incredients(text: 'Hello', image: AssetImage('assets/images/allspice.jpeg')),
];

class _IncredientsListState extends State<IncredientsList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        IncredientTile(),
        IncredientTile(),
        IncredientTile(),
        IncredientTile(),
        IncredientTile(),
        IncredientTile(),
      ],

      //print(incredientsData.incredients[0].text);
    );
  }
}

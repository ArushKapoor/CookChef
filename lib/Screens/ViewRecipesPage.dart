import 'package:flutter/material.dart';

class ViewRecipesPage extends StatefulWidget {
  static const String id = 'view_recipes_page';
  @override
  _ViewRecipesPageState createState() => _ViewRecipesPageState();
}

class _ViewRecipesPageState extends State<ViewRecipesPage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('CookChef'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            width: _width,
            child: Text(
              'Recipes',
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                6,
                (index) => Column(
                  children: <Widget>[
                    Image.asset('assets/images/apricot.jpeg'),
                    Text('Apricot'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

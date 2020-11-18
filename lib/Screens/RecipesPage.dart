import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cook_chef/Widgets/IncredientsList.dart';

class RecipesPage extends StatefulWidget {
  static const String id = 'recipes_page';
  @override
  _RecipesPageState createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  bool isSwitched = false;
  bool isChecked = false;
  bool isHindi = false;
  bool isSetup = false;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              width: _width * 0.95,
              child: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  Text('Search for ingredients'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text(
                        'Hindi',
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isHindi = !isHindi;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isHindi ? Colors.green : Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      height: 20,
                      width: 40,
                      child: Row(
                        mainAxisAlignment: isHindi
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                )),
                            height: 18,
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: IngredientsList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

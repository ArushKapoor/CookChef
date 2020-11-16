import 'package:cook_chef/Screens/AccountPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utilities/BottomBar.dart';
import 'HomePage.dart';
import 'NotificationsPage.dart';

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

  List ingredients = new List();

  Widget renderIngredients() {
    return ListView.builder(
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
          return ingredients[index][0];
        });
  }

  SizedBox _setupIngredients() {
    isSetup = true;
    for (int i = 0; i < 5; i++) {
      _addIngredients(
          image: AssetImage('assets/images/allspice.jpeg'),
          text: 'Allspice',
          index: i);
    }
    return SizedBox();
  }

  void _addIngredients({AssetImage image, String text, int index}) {
    List data = new List();
    data.add(_createIngredient(image: image, text: text, index: index));
    data.add(false);
    ingredients.add(data);
  }

  Container _createIngredient({AssetImage image, String text, int index}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 27,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: image,
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
            onTap: () {
              setState(() {
                isChecked = ingredients[index][1];
                isChecked = !isChecked;
                ingredients[index][1] = isChecked;
                print(isChecked);
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

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('CookChef'),
        centerTitle: true,
      ),
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
            // Container(
            //   child: Expanded(
            //     child: ListView(
            //       children: <Widget>[
            //         // _createIngredient(
            //         //     image: AssetImage('assets/images/allspice.jpeg'),
            //         //     text: 'Allspice'),
            //         // _createIngredient(
            //         //     image: AssetImage('assets/images/allspice.jpeg'),
            //         //     text: 'Allspice'),
            //         _addIngredients(
            //             image: AssetImage('assets/images/allspice.jpeg'),
            //             text: 'Allspice'),
            //         renderIngredients(),
            //       ],
            //     ),
            //   ),
            // ),
            if (!isSetup) _setupIngredients(),
            Container(
              child: Expanded(
                child: renderIngredients(),
              ),
            ),
            bottomNavigationBar(context: context, page: RecipesPage.id)
          ],
        ),
      ),
    );
  }
}

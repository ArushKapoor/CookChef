import 'package:cook_chef/Screens/ViewRecipesPage.dart';
import 'package:cook_chef/Widgets/ingredientsTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cook_chef/Widgets/IngredientsList.dart';

import 'AccountPage.dart';
import 'AccountSearchPage.dart';
import 'FeedPage.dart';
import 'HomePage.dart';
import 'NotificationsPage.dart';
import 'RecipesPage.dart';

class SelectedIngredientsPage extends StatefulWidget {
  static const String id = 'selected_ingredients_page';
  @override
  _SelectedIngredientsPageState createState() =>
      _SelectedIngredientsPageState();
}

class _SelectedIngredientsPageState extends State<SelectedIngredientsPage> {
  int currentIndex = 1;
  bool hasTapped = false;

  final tabs = [
    HomePage(),
    RecipesPage(),
    NotificationsPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: (currentIndex == 1)
          ? AppBar(
              automaticallyImplyLeading:
                  (!hasTapped || currentIndex == 1) ? true : false,
              title: Text('CookChef'),
              centerTitle: true,
            )
          : null,
      bottomNavigationBar: (currentIndex != 0)
          ? BottomNavigationBar(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: currentIndex,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: (currentIndex == 0)
                      ? Icon(Icons.home)
                      : SvgPicture.asset(
                          'assets/icons/home_outlined.svg',
                          height: 25,
                        ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/chef.jpeg',
                    height: 22,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: (currentIndex != 2)
                      ? Icon(Icons.notifications_none)
                      : Icon(Icons.notifications),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: '',
                ),
              ],
              onTap: (index) {
                setState(() {
                  hasTapped = true;
                  currentIndex = index;
                });
              },
            )
          : null,
      body: (!hasTapped || currentIndex == 1)
          ? SafeArea(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                        itemCount: selectedIngredients.length,
                        itemBuilder: (context, index) {
                          final ingredient = selectedIngredients[index];
                          return IngredientTile(
                            text: ingredient.text,
                            imageUrl: ingredient.imageUrl,
                            isChecked: false,
                            isSelectedIngredient: true,
                            toggleCallback: () {
                              int i = ingredientsHandler.ingredients
                                  .indexOf(ingredient);
                              final ingredient_1 =
                                  ingredientsHandler.ingredients[i];
                              setState(() {
                                selectedIngredients.remove(ingredient);
                                ingredientsHandler
                                    .checkBoxToggler(ingredient_1);
                              });
                            },
                          );
                        }),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10.0),
                          width: _width,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Add ingredient',
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 10.0, left: 5.0, right: 5.0),
                          height: 1,
                          width: _width,
                          color: Colors.grey,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, ViewRecipesPage.id);
                            },
                            child: Text('View Recipe'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : tabs[currentIndex],
    );
  }
}

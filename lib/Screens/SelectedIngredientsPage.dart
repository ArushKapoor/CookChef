import 'package:cook_chef/Models/IngredientsHandler.dart';
import 'package:cook_chef/Models/RecipeHandler.dart';
import 'package:cook_chef/Screens/ViewRecipesPage.dart';
import 'package:cook_chef/Widgets/ingredientsTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'AccountPage.dart';
import 'HomePage.dart';
import 'NotificationsPage.dart';
import 'IncredientsPage.dart';

class SelectedIngredientsPage extends StatefulWidget {
  static const String id = 'selected_ingredients_page';
  @override
  _SelectedIngredientsPageState createState() =>
      _SelectedIngredientsPageState();
}

class _SelectedIngredientsPageState extends State<SelectedIngredientsPage> {
  int currentIndex = 1;
  bool hasTapped = false;
  RecipeHandler recipeHandler = RecipeHandler();
  final tabs = [
    HomePage(),
    RecipesPage(),
    NotificationsPage(),
    AccountPage(),
  ];

  String text;

  void createText(BuildContext context) {
    text = '';
    int length = context.read<IngredientsHandler>().selectedIngredients.length;
    for (int i = 0; i < length; i++) {
      text += context.read<IngredientsHandler>().selectedIngredients[i].text;
      if (i != length - 1) text += '+';
    }
  }

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
                        itemCount: context
                            .watch<IngredientsHandler>()
                            .selectedIngredients
                            .length,
                        itemBuilder: (context, index) {
                          final ingredient = context
                              .watch<IngredientsHandler>()
                              .selectedIngredients[index];
                          return IngredientTile(
                            text: ingredient.text,
                            imageUrl: ingredient.imageUrl,
                            isChecked: false,
                            isSelectedIngredient: true,
                            toggleCallback: () {
                              int i = context
                                  .read<IngredientsHandler>()
                                  .ingredients
                                  .indexOf(ingredient);
                              final ingredient_1 = context
                                  .read<IngredientsHandler>()
                                  .ingredients[i];
                              Provider.of<IngredientsHandler>(context,
                                      listen: false)
                                  .removeSelectedIngredient(ingredient);

                              Provider.of<IngredientsHandler>(context,
                                      listen: false)
                                  .checkBoxToggler(ingredient_1);
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
                            onTap: () async {
                              final ingredients = context
                                  .read<IngredientsHandler>()
                                  .selectedIngredients[0]
                                  .text;

                              createText(context);
                              print(text);

                              print(await recipeHandler
                                  .recipeFromIngredients(ingredients));
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

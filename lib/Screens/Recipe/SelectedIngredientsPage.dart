import 'package:cook_chef/Models/IngredientsHandler.dart';
import 'package:cook_chef/Models/Recipe.dart';
import 'package:cook_chef/Models/RecipeHandler.dart';
import 'package:cook_chef/Screens/Recipe/ViewRecipesPage.dart';
import 'package:cook_chef/Widgets/ingredientsTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../Account/AccountPage.dart';
import '../HomePage.dart';
import 'package:cook_chef/Screens/Recipe/IngredientsPage.dart';

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
    IngredientsPage(),
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
      appBar: (currentIndex != 0)
          ? AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
              ),
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
                  icon: Icon(Icons.account_circle),
                  label: '',
                ),
              ],
              onTap: (index) {
                setState(
                  () {
                    hasTapped = true;
                    currentIndex = index;
                  },
                );
              },
            )
          : null,
      body: (!hasTapped || currentIndex == 1)
          ? SafeArea(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.only(bottom: 10.0),
                    width: _width,
                    child: Text(
                      'Selected Ingredients',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
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
                              // int i = context
                              //     .read<IngredientsHandler>()
                              //     .ingredients
                              //     .indexOf(ingredient);
                              int i;
                              for (int index = 0;
                                  index <
                                      context
                                          .read<IngredientsHandler>()
                                          .ingredients
                                          .length;
                                  index++) {
                                if (ingredient.text ==
                                    context
                                        .read<IngredientsHandler>()
                                        .ingredients[index]
                                        .text) {
                                  i = index;
                                  break;
                                }
                              }
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
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            right: 10.0, bottom: 10.0, top: 3.0),
                        width: _width,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Add ingredient',
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.blueAccent),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          shadowColor: Colors.greenAccent,
                          elevation: 7.0,
                          child: Container(
                            // margin: EdgeInsets.only(top: 10.0, bottom: 30.0),
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 15.0),
                            decoration: BoxDecoration(
                              color: Colors.green[500],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: GestureDetector(
                              onTap: () async {
                                createText(context);
                                print(text);

                                final list = await recipeHandler
                                    .recipeFromIngredients(text);
                                print(list[0].recipeName);
                                Navigator.pushNamed(context, ViewRecipesPage.id,
                                    arguments:
                                        RecipiesArguments(recipeList: list));
                              },
                              child: Text(
                                'View Recipe',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : tabs[currentIndex],
    );
  }
}

class RecipiesArguments {
  List<Recipe> recipeList;
  RecipiesArguments({this.recipeList});
}

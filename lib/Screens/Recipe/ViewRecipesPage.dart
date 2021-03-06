import 'package:cook_chef/Screens/Recipe/MakeRecipePage.dart';
import 'package:cook_chef/Screens/Recipe/SelectedIngredientsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cook_chef/Screens/Recipe/IngredientsPage.dart';
import '../Account/AccountPage.dart';
import '../HomePage.dart';
import 'package:cook_chef/Models/RecipeHandler.dart';

class ViewRecipesPage extends StatefulWidget {
  static const String id = 'view_recipes_page';
  @override
  _ViewRecipesPageState createState() => _ViewRecipesPageState();
}

int currentIndex = 1;
bool hasTapped = false;

final tabs = [
  HomePage(),
  IngredientsPage(),
  AccountPage(
    ownUser: true,
  ),
];

class _ViewRecipesPageState extends State<ViewRecipesPage> {
  RecipeHandler recipeHandler = RecipeHandler();
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    final RecipiesArguments args = ModalRoute.of(context).settings.arguments;
    print(args.recipeList[0].recipeImageUrl);
    final _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: (currentIndex == 1)
          ? AppBar(
              automaticallyImplyLeading:
                  (!hasTapped || currentIndex == 1) ? true : false,
              title: Text('CookChef'),
              centerTitle: true,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
              ),
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
                setState(() {
                  hasTapped = true;
                  currentIndex = index;
                });
              },
            )
          : null,
      body: (!hasTapped || currentIndex == 1)
          ? Stack(children: [
              Column(
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
                        args.recipeList.length,
                        (index) => GestureDetector(
                          onTap: () async {
                            setState(() {
                              isVisible = true;
                            });
                            print(index - 1);
                            print('On tap is being clicked');
                            print(args.recipeList[index].id);
                            List ingredientsAndSteps = await recipeHandler
                                .recipeById(args.recipeList[index].id);
                            // ingredientsAndSteps[2] =
                            //     args.recipeList[index].recipeImageUrl;

                            // print(args.recipeList[index].recipeImageUrl);
                            // ingredientsAndSteps[3] =
                            //     args.recipeList[index].recipeName;
                            //print(args.recipeList[index].recipeName);
                            //print(ingredientsAndSteps);

                            setState(() {
                              isVisible = false;
                            });
                            Navigator.pushNamed(
                              context,
                              MakeRecipesPage.id,
                              arguments: RecipeArgument(
                                  ingredientAndSteps: ingredientsAndSteps,
                                  recipeImage:
                                      args.recipeList[index].recipeImageUrl,
                                  recipeName:
                                      args.recipeList[index].recipeName),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              Image.network(
                                  args.recipeList[index].recipeImageUrl),
                              Text(
                                args.recipeList[index].recipeName,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (isVisible)
                Opacity(
                  opacity: 0.60,
                  child: Container(
                    height: _height,
                    width: _width,
                  ),
                ),
              if (isVisible)
                Center(
                  child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xff006043)),
                  ),
                ),
            ])
          : tabs[currentIndex],
    );
  }
}

class RecipeArgument {
  List ingredientAndSteps;
  String recipeName, recipeImage;
  RecipeArgument({this.ingredientAndSteps, this.recipeImage, this.recipeName});
}

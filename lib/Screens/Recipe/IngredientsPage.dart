import 'package:cook_chef/Models/IngredientsHandler.dart';
import 'package:cook_chef/Widgets/ingredientsTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:translator/translator.dart';
import 'package:cook_chef/Models/Ingredient.dart';

class IngredientsPage extends StatefulWidget {
  static const String id = 'ingredients_page';
  @override
  _IngredientsPageState createState() => _IngredientsPageState();
}

class _IngredientsPageState extends State<IngredientsPage> {
  bool isSwitched = false;
  bool isChecked = false;
  bool isHindi = false;
  bool isSetup = false;

  static List<dynamic> _resultsList = [];

  IngredientsHandler _ingredientsHandler = IngredientsHandler();

  TextEditingController _searchController = TextEditingController();

  final translator = GoogleTranslator();
  String text;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
    searchResults();
    translate();
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    searchResults();
  }

  void searchResults() {
    var showResults = [];

    if (_searchController.text != "") {
      for (int index = 0;
          index < _ingredientsHandler.ingredients.length;
          index++) {
        final ingredient = _ingredientsHandler.ingredients[index];
        String title = ingredient.text.toString().toLowerCase();

        if (title.contains(_searchController.text.toLowerCase())) {
          showResults.add(_ingredientsHandler.ingredients[index]);
        }
      }
    } else {
      showResults = List.from(_ingredientsHandler.ingredients);
    }
    setState(() {
      _resultsList = showResults;
    });
  }

  Future translate() async {
    // print('It Started');
    // await translator.translate('Hello', from: 'en', to: 'hi').then((value) {
    //   print(value);
    // });
    // var translate = '';
    // // await translator.translate(text, from: 'en', to: 'hi').then((value) {
    // //   translate = value;
    // // });
    // // setState(() {
    // //   this.text = translate.toString();
    // //   print(this.text);
    // // });
    //  Ingredients(
    //     text: '5 spice powder',
    //     imageUrl:
    //         'http://spoonacular.com/cdn/ingredients_100x100/chinese-five-spice-powder.png'),
    List ingredientsOld = context.read<IngredientsHandler>().ingredients;
    List<Ingredients> newList = [];
    for (int i = 0; i < 10; i++) {
      Ingredients ingredient = ingredientsOld[i];
      await translator
          .translate(ingredient.text, from: 'en', to: 'hi')
          .then((value) {
        newList.add(Ingredients(
            text: ingredient.text,
            imageUrl: ingredient.imageUrl,
            hindiText: value.text));
      });
    }
    print(newList);
    // await translator.translate('Hello', from: 'en', to: 'hi').then((value) {
    //   print(value);
    // });
    return translate.toString();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              width: _width * 0.95,
              height: _height * 0.1,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 19,
                  ),
                  border: InputBorder.none,
                  hintText: 'Search for ingredients',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              width: _width,
              height: 1,
              color: Colors.grey[300],
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
                // child: IngredientsList(),
                child: Consumer<IngredientsHandler>(
                  builder: (context, ingredientHandling, child) {
                    return ListView.builder(
                      itemCount: _resultsList.length,
                      itemBuilder: (context, index) {
                        final ingredient = _resultsList[index];
                        String text = ingredient.text;
                        // if (isHindi) translate();
                        // if (isHindi) {
                        //   text = translate(text).toString();
                        //   if (this.text == null) {
                        //     return Text('Working on it');
                        //   } else {
                        //     return IngredientTile(
                        //       text: text,
                        //       imageUrl: ingredient.imageUrl,
                        //       isChecked: ingredient.isChecked,
                        //       isSelectedIngredient: false,
                        //       toggleCallback: () {
                        //         ingredientHandling.checkBoxToggler(ingredient);
                        //
                        //         if (ingredient.isChecked) {
                        //           ingredientHandling
                        //               .addSelectedIngredient(ingredient);
                        //         } else {
                        //           ingredientHandling
                        //               .removeSelectedIngredient(ingredient);
                        //         }
                        //       },
                        //     );
                        //   }
                        // } else {
                        return IngredientTile(
                          text: ingredient.text,
                          imageUrl: ingredient.imageUrl,
                          isChecked: ingredient.isChecked,
                          isSelectedIngredient: false,
                          toggleCallback: () {
                            ingredientHandling.checkBoxToggler(ingredient);

                            if (ingredient.isChecked) {
                              ingredientHandling
                                  .addSelectedIngredient(ingredient);
                            } else {
                              ingredientHandling
                                  .removeSelectedIngredient(ingredient);
                            }
                          },
                        );
                        // }
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

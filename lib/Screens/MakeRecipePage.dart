import 'package:cook_chef/Screens/ViewRecipesPage.dart';
import 'package:flutter/material.dart';

class MakeRecipesPage extends StatefulWidget {
  static const String id = 'make_recipes_page';
  @override
  _MakeRecipesPageState createState() => _MakeRecipesPageState();
}

class _MakeRecipesPageState extends State<MakeRecipesPage> {
  @override
  Widget build(BuildContext context) {
    final RecipeArgument = ModalRoute.of(context).settings.arguments;
    //TODO: here is one more arg of list in a list 0 wala ingredients aur 1 wala steps

    /* This is how I was thinking of adding steps and ingredients */
    String ingredients = '2 cups white sugar\n1 1⁄4 cups vegetable oil\n'
        '1 teaspoon vanilla extract\n2 cups canned pumpkin'
        '\n4 eggs\n2 cups all-purpose flour\n'
        '3 teaspoons baking powder\n'
        '2 teaspoons baking soda\n'
        '1⁄4 teaspoon salt\n'
        '2 teaspoons ground cinnamon\n'
        '1 cup chopped walnuts (Optional)';
    String steps = 'Step 1\nPreheat oven to 350 degrees F (175 degrees C).'
        ' Grease and flour a 12x18 inch pan. Sift together'
        ' the flour, baking powder, baking soda, salt and'
        ' cinnamon. Set aside.\n\nStep 2\nIn a large bowl'
        ' combine sugar and oil. Blend in vanilla and '
        'pumpkin, then beat in eggs one at a time. '
        'Gradually beat in flour mixture. Stir in nuts. '
        'Spread batter into prepared 12x18 inch pan.\n\n'
        'Step 3\nBake in the preheated oven for 30 minutes,'
        ' or until a toothpick inserted into the centre of '
        'the cake comes out clean. Allow to cool.';

    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('CookChef'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Text('Pumpkin Cake'),
          Image.asset('assets/images/apricot.jpeg'),
          Text('Ingredients'),
          Container(
            margin:
                EdgeInsets.only(bottom: 10.0, left: 5.0, right: 5.0, top: 5.0),
            height: 1,
            width: _width,
            color: Colors.grey,
          ),
          Container(
            child: Text(ingredients),
          ),
          Text('Direction'),
          Container(
            margin:
                EdgeInsets.only(bottom: 10.0, left: 5.0, right: 5.0, top: 5.0),
            height: 1,
            width: _width,
            color: Colors.grey,
          ),
          Container(
            child: Text(steps),
          ),
        ],
      ),
    );
  }
}

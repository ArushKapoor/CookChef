import 'package:cook_chef/Screens/Recipe/ViewRecipesPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MakeRecipesPage extends StatefulWidget {
  static const String id = 'make_recipes_page';
  @override
  _MakeRecipesPageState createState() => _MakeRecipesPageState();
}

class _MakeRecipesPageState extends State<MakeRecipesPage> {
  @override
  Widget build(BuildContext context) {
    final RecipeArgument args = ModalRoute.of(context).settings.arguments;
    print(args.ingredientAndSteps[0]); //for ingredients List
    print(args.ingredientAndSteps[1]); // steps List
    /* This is how I was thinking of adding steps and ingredients */
    // String ingredients = '2 cups white sugar\n1 1⁄4 cups vegetable oil\n'
    //     '1 teaspoon vanilla extract\n2 cups canned pumpkin'
    //     '\n4 eggs\n2 cups all-purpose flour\n'
    //     '3 teaspoons baking powder\n'
    //     '2 teaspoons baking soda\n'
    //     '1⁄4 teaspoon salt\n'
    //     '2 teaspoons ground cinnamon\n'
    //     '1 cup chopped walnuts (Optional)';
    String ingredients =
        args.ingredientAndSteps[0].toString().replaceAll(", ", "\n");
    if (ingredients.startsWith("[")) {
      ingredients = ingredients.substring(1, ingredients.length - 1);
    }
    // String steps = 'Step 1\nPreheat oven to 350 degrees F (175 degrees C).'
    //     ' Grease and flour a 12x18 inch pan. Sift together'
    //     ' the flour, baking powder, baking soda, salt and'
    //     ' cinnamon. Set aside.\n\nStep 2\nIn a large bowl'
    //     ' combine sugar and oil. Blend in vanilla and '
    //     'pumpkin, then beat in eggs one at a time. '
    //     'Gradually beat in flour mixture. Stir in nuts. '
    //     'Spread batter into prepared 12x18 inch pan.\n\n'
    //     'Step 3\nBake in the preheated oven for 30 minutes,'
    //     ' or until a toothpick inserted into the centre of '
    //     'the cake comes out clean. Allow to cool.';
    String steps =
        args.ingredientAndSteps[1].toString().replaceAll("., ", ".\n");
    if (steps.startsWith("[")) {
      steps = steps.substring(1, steps.length - 1);
    }
    if (steps.contains("Note:")) {
      int index = steps.indexOf("Note:");
      steps = steps.substring(0, index) +
          "\n(" +
          steps.substring(index, steps.length) +
          ")";
    }

    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
        ),
        title: Text('CookChef'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 15.0),
              // child: Text(args.ingredientAndSteps[3]),
              child: Text(
                args.ingredientAndSteps[3],
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(args.ingredientAndSteps[2]),
              ),
            ),
            Container(
              child: Text(
                'Ingredients',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0, top: 5.0),
              height: 1,
              width: _width,
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text(
                ingredients,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            Container(
              child: Text(
                'Direction',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0, top: 5.0),
              height: 1,
              width: _width,
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text(
                steps,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Beet Root Rice could be just the <b>gluten free</b> recipe you've been looking for. For <b>32 cents per serving</b>, this recipe <b>covers 6%</b> of your daily requirements of vitamins and minerals. One serving contains <b>119 calories</b>, <b>2g of protein</b>, and <b>8g of fat</b>. This recipe serves 8. This recipe from Foodista requires fried onions, salt, vegetable oil, and curry leaves. 1 person found this recipe to be scrumptious and satisfying. It works well as a side dish. From preparation to the plate, this recipe takes about <b>about 45 minutes</b>. With a spoonacular <b>score of 34%</b>, this dish is not so spectacular. <a href="https://spoonacular.com/recipes/beet-rice-garlicky-kale-bowls-with-beet-green-pesto-859868">Beet Rice & Garlicky Kale Bowls with Beet Green Pesto</a>, <a href="https://spoonacular.com/recipes/celery-root-and-beet-salad-91696">Celery Root and Beet Salad</a>, and <a href="https://spoonacular.com/recipes/crispy-root-vegetable-latkes-with-beet-puree-237328">Crispy Root Vegetable Latkes with Beet Puree</a> are very similar to this recipe.

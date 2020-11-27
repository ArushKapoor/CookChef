import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'Ingredient.dart';

class IngredientsHandler extends ChangeNotifier {
  List<Ingredients> _ingredients = [
    Ingredients(
        text: '5 spice powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chinese-five-spice-powder.png'),
    Ingredients(
        text: 'acorn squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/acorn-squash.jpg'),
    Ingredients(
        text: 'adobo sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/harissa.jpg'),
    Ingredients(
        text: 'agave nectar',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/agave.png'),
    Ingredients(
        text: 'ahi tuna',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tuna-steak.png'),
    Ingredients(
        text: 'alfredo pasta sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/alfredo-sauce.png'),
    Ingredients(
        text: 'almond extract',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg'),
    Ingredients(
        text: 'almond flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg'),
    Ingredients(
        text: 'almond milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg'),
    Ingredients(
        text: 'almonds',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg'),
    Ingredients(
        text: 'amaretto',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/temporary-orange-liqueur.jpg'),
    Ingredients(
        text: 'ancho chiles',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/anchovies.jpg'),
    Ingredients(
        text: 'anchovies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/anchovies.jpg'),
    Ingredients(
        text: 'andouille sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/smoked-sausage.jpg'),
    Ingredients(
        text: 'angel food cake mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/angelhair.jpg'),
    Ingredients(
        text: 'angel hair pasta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/angelhair.jpg'),
    Ingredients(
        text: 'angostura bitters',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Ingredients(
        text: 'apple',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Ingredients(
        text: 'apple butter spread',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Ingredients(
        text: 'apple cider',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Ingredients(
        text: 'apple juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Ingredients(
        text: 'apple pie spice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Ingredients(
        text: 'apricot preserves',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apricot.jpg'),
    Ingredients(
        text: 'apricots',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apricot.jpg'),
    Ingredients(
        text: 'arborio rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/arborio-rice.png'),
    Ingredients(
        text: 'arrowroot powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-powder.jpg'),
    Ingredients(
        text: 'artichoke heart quarters',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/artichokes.png'),
    Ingredients(
        text: 'artichokes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/artichokes.png'),
    Ingredients(
        text: 'arugula',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/arugula-or-rocket-salad.jpg'),
    Ingredients(
        text: 'asafoetida',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/curry-powder.jpg'),
    Ingredients(
        text: 'asafoetida powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/curry-powder.jpg'),
    Ingredients(
        text: 'asiago cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/parmesan.jpg'),
    Ingredients(
        text: 'asian pear',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/asian-medley.png'),
    Ingredients(
        text: 'asparagus spears',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/asparagus.png'),
    Ingredients(
        text: 'avocado',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/avocado.jpg'),
    Ingredients(
        text: 'avocado oil',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/avocado.jpg'),
    Ingredients(
        text: 'baby bell peppers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg'),
    Ingredients(
        text: 'baby bok choy',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg'),
    Ingredients(
        text: 'baby carrots',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg'),
    Ingredients(
        text: 'baby corn',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg'),
    Ingredients(
        text: 'baby spinach leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg'),
    Ingredients(
        text: 'baby-back ribs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-back-ribs.jpg'),
    Ingredients(
        text: 'baby-back ribs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-back-ribs.jpg'),
    Ingredients(
        text: 'bacon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-bacon.png'),
    Ingredients(
        text: 'bacon fat',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-bacon.png'),
    Ingredients(
        text: 'baguette',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/half-baguette.jpg'),
    Ingredients(
        text: 'baking bar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Ingredients(
        text: 'baking powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Ingredients(
        text: 'baking soda',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Ingredients(
        text: 'balsamic glaze',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Ingredients(
        text: 'balsamic vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Ingredients(
        text: 'bamboo shoots',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bamboo-shoots.jpg'),
    Ingredients(
        text: 'banana',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/bananas.jpg'),
    Ingredients(
        text: 'basmati rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-white-long-grain-or-basmatii-cooked.jpg'),
    Ingredients(
        text: 'bay leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bay-leaves.jpg'),
    Ingredients(
        text: 'bbq sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Ingredients(
        text: 'beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bean-sprouts.jpg'),
    Ingredients(
        text: 'beef',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/beef-cubes-raw.png'),
    Ingredients(
        text: 'beef brisket',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg'),
    Ingredients(
        text: 'beef broth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg'),
    Ingredients(
        text: 'beef chuck roast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg'),
    Ingredients(
        text: 'beef stock',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg'),
    Ingredients(
        text: 'beef tenderloin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg'),
    Ingredients(
        text: 'beer',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beer.jpg'),
    Ingredients(
        text: 'beer',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beer.jpg'),
    Ingredients(
        text: 'beets',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beets.jpg'),
    Ingredients(
        text: 'bell pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bell-pepper-orange.png'),
    Ingredients(
        text: 'berries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/berries-mixed.jpg'),
    Ingredients(
        text: 'biscuit mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk-biscuits.jpg'),
    Ingredients(
        text: 'biscuits',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk-biscuits.jpg'),
    Ingredients(
        text: 'bittersweet chocolate',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Ingredients(
        text: 'black bean sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Ingredients(
        text: 'black beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Ingredients(
        text: 'black olives',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Ingredients(
        text: 'black pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Ingredients(
        text: 'black sesame seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Ingredients(
        text: 'blackberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Ingredients(
        text: 'blanched almonds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/blanched-almonds.png'),
    Ingredients(
        text: 'blood orange',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/blood-orange.jpg'),
    Ingredients(
        text: 'blue cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/blue-cheese.png'),
    Ingredients(
        text: 'blueberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/blueberries.jpg'),
    Ingredients(
        text: 'bok choy',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bok-choy.jpg'),
    Ingredients(
        text: 'boneless skinless chicken breast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-loin.jpg'),
    Ingredients(
        text: 'bourbon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vanilla-extract.jpg'),
    Ingredients(
        text: 'brandy',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/brandy.png'),
    Ingredients(
        text: 'bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-bread.jpg'),
    Ingredients(
        text: 'bread flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-bread.jpg'),
    Ingredients(
        text: 'breakfast links',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/breakfast-sausage-links.jpg'),
    Ingredients(
        text: 'brie',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/brie.jpg'),
    Ingredients(
        text: 'broccoli',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/broccoli.jpg'),
    Ingredients(
        text: 'broccoli florets',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/broccoli.jpg'),
    Ingredients(
        text: 'brown rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png'),
    Ingredients(
        text: 'brown rice flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png'),
    Ingredients(
        text: 'brown sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png'),
    Ingredients(
        text: 'brownie mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png'),
    Ingredients(
        text: 'brussel sprouts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brussels-sprouts.jpg'),
    Ingredients(
        text: 'bulgur',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bulgur-wheat.jpg'),
    Ingredients(
        text: 'butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg'),
    Ingredients(
        text: 'butterhead lettuce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg'),
    Ingredients(
        text: 'buttermilk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg'),
    Ingredients(
        text: 'butternut squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg'),
    Ingredients(
        text: 'butterscotch chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg'),
    Ingredients(
        text: 'cabbage',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cabbage.jpg'),
    Ingredients(
        text: 'caesar dressing',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coleslaw-or-caesar-dressing.jpg'),
    Ingredients(
        text: 'cajun seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chili-powder.jpg'),
    Ingredients(
        text: 'cake flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Ingredients(
        text: 'candy canes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/candy-corn.jpg'),
    Ingredients(
        text: 'candy coating',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/candy-corn.jpg'),
    Ingredients(
        text: 'candy melts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/candy-corn.jpg'),
    Ingredients(
        text: 'canned black beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'canned diced tomatoes',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'canned garbanzo beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'canned green chiles',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'canned kidney beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'canned mushrooms',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'canned pinto beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'canned red kidney beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'canned tomatoes',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'canned tuna',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'canned white beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'canned white cannellini beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'cannellini beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'cantaloupe',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cantaloupe.png'),
    Ingredients(
        text: 'capers',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/capers.jpg'),
    Ingredients(
        text: 'caramel sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soft-caramels.jpg'),
    Ingredients(
        text: 'caramels',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soft-caramels.jpg'),
    Ingredients(
        text: 'caraway seed',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/caraway-seeds.jpg'),
    Ingredients(
        text: 'cardamom',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cardamom.jpg'),
    Ingredients(
        text: 'cardamom pods',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cardamom.jpg'),
    Ingredients(
        text: 'carp',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fish-fillet.jpg'),
    Ingredients(
        text: 'carrots',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sliced-carrot.png'),
    Ingredients(
        text: 'cat fish filets',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/catfish.jpg'),
    Ingredients(
        text: 'cauliflower',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cauliflower.jpg'),
    Ingredients(
        text: 'cauliflower florets',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cauliflower.jpg'),
    Ingredients(
        text: 'cauliflower rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cauliflower.jpg'),
    Ingredients(
        text: 'celery',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg'),
    Ingredients(
        text: 'celery ribs',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg'),
    Ingredients(
        text: 'celery root',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg'),
    Ingredients(
        text: 'celery salt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg'),
    Ingredients(
        text: 'celery seed',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg'),
    Ingredients(
        text: 'cereal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-crispy-cereal.png'),
    Ingredients(
        text: 'champagne',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/champagne.png'),
    Ingredients(
        text: 'chana dal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bengal-gram.png'),
    Ingredients(
        text: 'cheddar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'cheese curds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'cheese dip',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'cheese soup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'cheese tortellini',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'cherry',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cherries.jpg'),
    Ingredients(
        text: 'cherry pie filling',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cherries.jpg'),
    Ingredients(
        text: 'cherry tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cherries.jpg'),
    Ingredients(
        text: 'chestnuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chestnuts.jpg'),
    Ingredients(
        text: 'chia seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chia-seeds.jpg'),
    Ingredients(
        text: 'chicken base',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken bouillon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken bouillon granules',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken breasts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken broth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken drumsticks',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken legs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken pieces',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken stock',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken tenders',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken thighs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chicken wings',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chickpea',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'chile garlic sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Ingredients(
        text: 'chili paste',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Ingredients(
        text: 'chili peppers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Ingredients(
        text: 'chili powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Ingredients(
        text: 'chili sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Ingredients(
        text: 'chipotle chiles in adobo',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chile-chipotle.jpg'),
    Ingredients(
        text: 'chipotle chilies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chile-chipotle.jpg'),
    Ingredients(
        text: 'chipotle peppers in adobo',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chile-chipotle.jpg'),
    Ingredients(
        text: 'chive & onion cream cheese spread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-chives.jpg'),
    Ingredients(
        text: 'chocolate',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Ingredients(
        text: 'chocolate chip cookies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Ingredients(
        text: 'chocolate chunks',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Ingredients(
        text: 'chocolate ice cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Ingredients(
        text: 'chocolate milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Ingredients(
        text: 'chocolate sandwich cookies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Ingredients(
        text: 'chocolate syrup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Ingredients(
        text: 'chocolate wafer cookies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Ingredients(
        text: 'chorizo sausage',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/chorizo.jpg'),
    Ingredients(
        text: 'cider vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/apple-cider-vinegar.jpg'),
    Ingredients(
        text: 'cilantro',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cilantro.png'),
    Ingredients(
        text: 'cinnamon roll',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg'),
    Ingredients(
        text: 'cinnamon stick',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg'),
    Ingredients(
        text: 'cinnamon sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg'),
    Ingredients(
        text: 'cinnamon swirl bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg'),
    Ingredients(
        text: 'clam juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/clam-juice.png'),
    Ingredients(
        text: 'clams',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/clams.jpg'),
    Ingredients(
        text: 'clarified butter',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ghee.jpg'),
    Ingredients(
        text: 'clove',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cloves.jpg'),
    Ingredients(
        text: 'coarse salt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salt.jpg'),
    Ingredients(
        text: 'coarsely ground pepper',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salt.jpg'),
    Ingredients(
        text: 'cocoa nibs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Ingredients(
        text: 'cocoa powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Ingredients(
        text: 'coconut',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Ingredients(
        text: 'coconut aminos',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Ingredients(
        text: 'coconut butter',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Ingredients(
        text: 'coconut cream',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Ingredients(
        text: 'coconut extract',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Ingredients(
        text: 'coconut flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Ingredients(
        text: 'coconut milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Ingredients(
        text: 'coconut oil',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Ingredients(
        text: 'coconut water',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Ingredients(
        text: 'cod',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cod-fillet.jpg'),
    Ingredients(
        text: 'coffee',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brewed-coffee.jpg'),
    Ingredients(
        text: 'cognac',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cognac.jpg'),
    Ingredients(
        text: 'cola',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coca-cola.png'),
    Ingredients(
        text: 'colby jack',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/colby-jack.jpg'),
    Ingredients(
        text: 'collard greens',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/collard-greens.jpg'),
    Ingredients(
        text: 'condensed cream of celery soup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/evaporated-milk.png'),
    Ingredients(
        text: 'condensed cream of mushroom soup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/evaporated-milk.png'),
    Ingredients(
        text: 'confectioners swerve',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/powdered-sugar.jpg'),
    Ingredients(
        text: 'cooked bacon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Ingredients(
        text: 'cooked brown rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Ingredients(
        text: 'cooked chicken breast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Ingredients(
        text: 'cooked ham',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Ingredients(
        text: 'cooked long grain rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Ingredients(
        text: 'cooked pasta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Ingredients(
        text: 'cooked polenta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Ingredients(
        text: 'cooked quinoa',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Ingredients(
        text: 'cooked wild rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Ingredients(
        text: 'cookies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortbread-cookies.jpg'),
    Ingredients(
        text: 'coriander',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cilantro.png'),
    Ingredients(
        text: 'corn',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'corn bread mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Ingredients(
        text: 'corn chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Ingredients(
        text: 'corn flakes cereal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Ingredients(
        text: 'corn flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Ingredients(
        text: 'corn kernels',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Ingredients(
        text: 'corn oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Ingredients(
        text: 'corn tortillas',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Ingredients(
        text: 'cornbread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cornbread.jpg'),
    Ingredients(
        text: 'corned beef',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/beef-brisket.png'),
    Ingredients(
        text: 'cornish hens',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dill-pickles.jpg'),
    Ingredients(
        text: 'cornmeal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cornmeal.png'),
    Ingredients(
        text: 'cornstarch',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-powder.jpg'),
    Ingredients(
        text: 'cotija cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/feta.png'),
    Ingredients(
        text: 'cottage cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cottage-cheese.jpg'),
    Ingredients(
        text: 'country bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Ingredients(
        text: 'courgettes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/zucchini.jpg'),
    Ingredients(
        text: 'couscous',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/couscous-cooked.jpg'),
    Ingredients(
        text: 'cow pea',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/black-eyed-peas.jpg'),
    Ingredients(
        text: 'crabmeat',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/crabmeat.jpg'),
    Ingredients(
        text: 'cracked pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/crackers.jpg'),
    Ingredients(
        text: 'cranberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cranberries.jpg'),
    Ingredients(
        text: 'cranberry juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cranberries.jpg'),
    Ingredients(
        text: 'cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Ingredients(
        text: 'cream cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Ingredients(
        text: 'cream cheese block',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Ingredients(
        text: 'cream of chicken soup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Ingredients(
        text: 'cream of tartar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Ingredients(
        text: 'creamed corn',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Ingredients(
        text: 'creamy peanut butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Ingredients(
        text: 'creme fraiche',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg'),
    Ingredients(
        text: 'cremini mushrooms',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mushrooms.png'),
    Ingredients(
        text: 'creole seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dijon-mustard.jpg'),
    Ingredients(
        text: 'crisp rice cereal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-crispy-cereal.png'),
    Ingredients(
        text: 'croutons',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/croutons.png'),
    Ingredients(
        text: 'crystallized ginger',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/candied-ginger-or-crystallized-ginger.jpg'),
    Ingredients(
        text: 'cucumber',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cucumber.jpg'),
    Ingredients(
        text: 'cumin seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ground-cumin.jpg'),
    Ingredients(
        text: 'cup cake',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/plain-cupcake.jpg'),
    Ingredients(
        text: 'currants',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/currants.jpg'),
    Ingredients(
        text: 'curry leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chili-paste.png'),
    Ingredients(
        text: 'dairy free milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Ingredients(
        text: 'dark brown sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Ingredients(
        text: 'dark chocolate',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Ingredients(
        text: 'dark chocolate candy bars',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Ingredients(
        text: 'dark chocolate chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Ingredients(
        text: 'dark sesame oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Ingredients(
        text: 'dates',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dates.jpg'),
    Ingredients(
        text: 'deep dish pie crust',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pie-crust.jpg'),
    Ingredients(
        text: 'deli ham',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham.png'),
    Ingredients(
        text: 'deli turkey',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham.png'),
    Ingredients(
        text: 'dessert oats',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg'),
    Ingredients(
        text: 'dessert wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg'),
    Ingredients(
        text: 'diced ham',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg'),
    Ingredients(
        text: 'diet pop',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg'),
    Ingredients(
        text: 'dijon mustard',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dijon-mustard.jpg'),
    Ingredients(
        text: 'dill',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dill.jpg'),
    Ingredients(
        text: 'dill pickles',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dill.jpg'),
    Ingredients(
        text: 'hot dog',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/hotdogs.png'),
    Ingredients(
        text: 'double cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-cream.png'),
    Ingredients(
        text: 'dried apricots',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Ingredients(
        text: 'dried basil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Ingredients(
        text: 'dried cherries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Ingredients(
        text: 'dried chorizo',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Ingredients(
        text: 'dried cranberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Ingredients(
        text: 'dried dill',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Ingredients(
        text: 'dried onion',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Ingredients(
        text: 'dried porcini mushrooms',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Ingredients(
        text: 'dried rubbed sage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Ingredients(
        text: 'dried thyme',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Ingredients(
        text: 'dried tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Ingredients(
        text: 'dry bread crumbs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/breadcrumbs.jpg'),
    Ingredients(
        text: 'dry milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg'),
    Ingredients(
        text: 'dry mustard',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg'),
    Ingredients(
        text: 'dry red wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Ingredients(
        text: 'dry roasted peanuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Ingredients(
        text: 'duck fat',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lard.png'),
    Ingredients(
        text: 'dutch process cocoa powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dutch-process-cocoa-powder.png'),
    Ingredients(
        text: 'edamame',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/edamame.png'),
    Ingredients(
        text: 'egg substitute',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/liquid-egg-substitute.jpg'),
    Ingredients(
        text: 'flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Ingredients(
        text: 'flour tortillas',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Ingredients(
        text: 'fontina cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/fontina.jpg'),
    Ingredients(
        text: 'food dye',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/food-coloring.png'),
    Ingredients(
        text: 'franks redhot sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/hotdogs.png'),
    Ingredients(
        text: 'free range eggs',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg'),
    Ingredients(
        text: 'french bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/crusty-bread.jpg'),
    Ingredients(
        text: 'fresh basil',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fresh bean sprouts',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fresh chives',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fresh corn',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fresh corn kernels',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fresh figs',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fresh fruit',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fresh herbs',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fresh mint',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fresh mozzarella',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fresh rosemary',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fresh thyme leaves',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'fried onions',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cooked-bacon.jpg'),
    Ingredients(
        text: 'frosting',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vanilla-frosting.png'),
    Ingredients(
        text: 'froyo bars',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/frozen-yogurt.png'),
    Ingredients(
        text: 'frozen corn',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'frozen spinach',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'fudge',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fudge-isolated.jpg'),
    Ingredients(
        text: 'fudge topping',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fudge-isolated.jpg'),
    Ingredients(
        text: 'garam masala',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/garam-masala.jpg'),
    Ingredients(
        text: 'garbanzo bean flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chickpeas.png'),
    Ingredients(
        text: 'garlic',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png'),
    Ingredients(
        text: 'garlic paste',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png'),
    Ingredients(
        text: 'garlic powder',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png'),
    Ingredients(
        text: 'garlic powder',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png'),
    Ingredients(
        text: 'garlic salt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png'),
    Ingredients(
        text: 'gelatin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/gelatin-powder.jpg'),
    Ingredients(
        text: 'gelatin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/gelatin-powder.jpg'),
    Ingredients(
        text: 'gin',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Ingredients(
        text: 'ginger',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Ingredients(
        text: 'ginger ale',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Ingredients(
        text: 'ginger paste',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Ingredients(
        text: 'ginger-garlic paste',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Ingredients(
        text: 'gingersnap cookies',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Ingredients(
        text: 'gnocchi',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/gnocchi-isolated.jpg'),
    Ingredients(
        text: 'goat cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Ingredients(
        text: 'golden raisins',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/corn-syrup.png'),
    Ingredients(
        text: 'gorgonzola',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/gorgonzola.jpg'),
    Ingredients(
        text: 'gouda cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/gouda.jpg'),
    Ingredients(
        text: 'graham cracker crumbs',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Ingredients(
        text: 'graham cracker pie crust',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Ingredients(
        text: 'graham crackers',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Ingredients(
        text: 'grain blend',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-wild-uncooked.png'),
    Ingredients(
        text: 'grand marnier',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/grand-marnier.jpg'),
    Ingredients(
        text: 'granny smith apples',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/grannysmith-apple.png'),
    Ingredients(
        text: 'granola',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/granola.jpg'),
    Ingredients(
        text: 'granulated garlic',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png'),
    Ingredients(
        text: 'grape tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg'),
    Ingredients(
        text: 'grapefruit',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg'),
    Ingredients(
        text: 'grapeseed oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg'),
    Ingredients(
        text: 'gravy',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/gravy.jpg'),
    Ingredients(
        text: 'great northern beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-beans.jpg'),
    Ingredients(
        text: 'greek yogurt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/plain-yogurt.jpg'),
    Ingredients(
        text: 'green beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Ingredients(
        text: 'green bell pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Ingredients(
        text: 'green chili pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Ingredients(
        text: 'green food coloring',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Ingredients(
        text: 'green grapes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Ingredients(
        text: 'green olives',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Ingredients(
        text: 'green onions',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Ingredients(
        text: 'greens',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Ingredients(
        text: 'grill cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/halloumi.png'),
    Ingredients(
        text: 'grill seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/halloumi.png'),
    Ingredients(
        text: 'ground allspice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground ancho chili',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground beef',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground chicken',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground chipotle chile pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground cinnamon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground cinnamon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground cloves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground coriander seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground cumin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground flaxseed',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground ginger',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground lamb',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground mace',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground nutmeg',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground pork',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground pork sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'ground veal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'gruyere',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/gruyere.jpg'),
    Ingredients(
        text: 'guacamole',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/guacamole.jpg'),
    Ingredients(
        text: 'half n half',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Ingredients(
        text: 'halibut fillet',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/halibut-fillet.jpg'),
    Ingredients(
        text: 'ham',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Ingredients(
        text: 'hamburger buns',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hamburger-bun.jpg'),
    Ingredients(
        text: 'hard cooked eggs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hard-boiled-egg.png'),
    Ingredients(
        text: 'harissa',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/harissa-paste.jpg'),
    Ingredients(
        text: 'hash brown potatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hash-brown-potatoes.png'),
    Ingredients(
        text: 'hazelnuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hazelnuts.jpg'),
    Ingredients(
        text: 'healthy request cream of celery soup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cream-of-celery-soup.jpg'),
    Ingredients(
        text: 'hemp seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hemp-oil.jpg'),
    Ingredients(
        text: 'herbes de provence',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-herbs.png'),
    Ingredients(
        text: 'herbs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-fresh-herbs.jpg'),
    Ingredients(
        text: 'hersheys kisses brand milk chocolates',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Ingredients(
        text: 'hoisin sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Ingredients(
        text: 'honey mustard',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png'),
    Ingredients(
        text: 'horseradish',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/horseradish.jpg'),
    Ingredients(
        text: 'hot sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hot-sauce-or-tabasco.png'),
    Ingredients(
        text: 'hummus',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/hummus.jpg'),
    Ingredients(
        text: 'ice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ice-cubes.png'),
    Ingredients(
        text: 'ice cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ice-cubes.png'),
    Ingredients(
        text: 'instant chocolate pudding mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Ingredients(
        text: 'instant coffee powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Ingredients(
        text: 'instant espresso powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Ingredients(
        text: 'instant lemon pudding mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Ingredients(
        text: 'instant yeast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Ingredients(
        text: 'irish cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baileys-liqueur.png'),
    Ingredients(
        text: 'italian bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg'),
    Ingredients(
        text: 'italian cheese blend',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg'),
    Ingredients(
        text: 'italian sausages',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg'),
    Ingredients(
        text: 'italian seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg'),
    Ingredients(
        text: 'jaggery',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/jaggery.jpg'),
    Ingredients(
        text: 'jalapeno',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/jalapeno-pepper.png'),
    Ingredients(
        text: 'jasmine rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-jasmine-cooked.jpg'),
    Ingredients(
        text: 'jelly',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/grape-jelly.jpg'),
    Ingredients(
        text: 'jicama',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/jicama.jpg'),
    Ingredients(
        text: 'jimmies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/colorful-sprinkles.jpg'),
    Ingredients(
        text: 'juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/apple-juice.jpg'),
    Ingredients(
        text: 'jumbo shell pasta',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/shrimp.png'),
    Ingredients(
        text: 'kaffir lime leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/lime-leaves.jpg'),
    Ingredients(
        text: 'kahlua',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coffee-liqueur.jpg'),
    Ingredients(
        text: 'kalamata olives',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/calamata-or-kalamata-olives.jpg'),
    Ingredients(
        text: 'kale',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/kale.jpg'),
    Ingredients(
        text: 'ketchup',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ketchup.png'),
    Ingredients(
        text: 'lb cake',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pound-cake.jpg'),
    Ingredients(
        text: 'lean ground beef',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'lean ground turkey',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'lean pork tenderloin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Ingredients(
        text: 'leeks',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/leeks.jpg'),
    Ingredients(
        text: 'leg of lamb',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/leg-of-lamb.png'),
    Ingredients(
        text: 'lemon',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Ingredients(
        text: 'lemon curd',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Ingredients(
        text: 'lemon extract',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Ingredients(
        text: 'lemon juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Ingredients(
        text: 'lemon peel',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Ingredients(
        text: 'lemon pepper',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Ingredients(
        text: 'lemon wedges',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Ingredients(
        text: 'lemongrass',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Ingredients(
        text: 'lettuce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/iceberg-lettuce.jpg'),
    Ingredients(
        text: 'lettuce leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/iceberg-lettuce.jpg'),
    Ingredients(
        text: 'light butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Ingredients(
        text: 'light coconut milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Ingredients(
        text: 'light corn syrup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Ingredients(
        text: 'light cream cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Ingredients(
        text: 'light mayonnaise',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Ingredients(
        text: 'light olive oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Ingredients(
        text: 'light soy sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Ingredients(
        text: 'lime',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lime.jpg'),
    Ingredients(
        text: 'lime juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/zest-lime.jpg'),
    Ingredients(
        text: 'lime wedges',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/zest-lime.jpg'),
    Ingredients(
        text: 'lime zest',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/zest-lime.jpg'),
    Ingredients(
        text: 'linguine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/spaghetti.jpg'),
    Ingredients(
        text: 'liquid smoke',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png'),
    Ingredients(
        text: 'liquid stevia',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png'),
    Ingredients(
        text: 'liquor',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Ingredients(
        text: 'live lobster',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lobster.png'),
    Ingredients(
        text: 'long-grain rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-white-long-grain-or-basmatii-cooked.jpg'),
    Ingredients(
        text: 'low fat buttermilk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Ingredients(
        text: 'low fat milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Ingredients(
        text: 'low fat milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Ingredients(
        text: 'low fat plain yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Ingredients(
        text: 'low fat ricotta cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Ingredients(
        text: 'low fat sour cream',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Ingredients(
        text: 'low sodium chicken broth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg'),
    Ingredients(
        text: 'low sodium soy sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg'),
    Ingredients(
        text: 'low-sodium chicken stock',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/broth.jpg'),
    Ingredients(
        text: 'lower sodium beef broth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg'),
    Ingredients(
        text: 'lump crab',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/lump-crabmeat.png'),
    Ingredients(
        text: 'm&m candies',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Ingredients(
        text: 'macadamia nuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/macadamia-nuts.png'),
    Ingredients(
        text: 'macaroni and cheese mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/macaroni.png'),
    Ingredients(
        text: 'malt drink mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg'),
    Ingredients(
        text: 'mandarin orange sections',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mandarin-or-tangerines-or-clementines.jpg'),
    Ingredients(
        text: 'mandarin oranges',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mandarin-or-tangerines-or-clementines.jpg'),
    Ingredients(
        text: 'mango',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mango.jpg'),
    Ingredients(
        text: 'maple syrup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/maple-syrup.png'),
    Ingredients(
        text: 'maraschino cherries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/maraschino.jpg'),
    Ingredients(
        text: 'margarine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg'),
    Ingredients(
        text: 'marinara sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg'),
    Ingredients(
        text: 'marjoram',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/marjoram.jpg'),
    Ingredients(
        text: 'marsala wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Ingredients(
        text: 'marshmallow fluff',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/normal-marshmallows.jpg'),
    Ingredients(
        text: 'marshmallows',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/normal-marshmallows.jpg'),
    Ingredients(
        text: 'masa harina',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/corn-flour.jpg'),
    Ingredients(
        text: 'mascarpone',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-cream-fluffy.jpg'),
    Ingredients(
        text: 'mat beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/moth-bean.png'),
    Ingredients(
        text: 'matcha tea',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/matcha-powder.jpg'),
    Ingredients(
        text: 'mayonnaise',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mayonnaise.png'),
    Ingredients(
        text: 'meat',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'meat',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Ingredients(
        text: 'meatballs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/meatballs.png'),
    Ingredients(
        text: 'medjool dates',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dates.jpg'),
    Ingredients(
        text: 'mexican cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mexicorn.png'),
    Ingredients(
        text: 'meyer lemon juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Ingredients(
        text: 'milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Ingredients(
        text: 'milk chocolate chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg'),
    Ingredients(
        text: 'mint chutney',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Ingredients(
        text: 'minute rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-white-rice.png'),
    Ingredients(
        text: 'miracle whip',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mayonnaise.png'),
    Ingredients(
        text: 'mirin',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mirin.jpg'),
    Ingredients(
        text: 'miso',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/miso.jpg'),
    Ingredients(
        text: 'molasses',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/molasses.jpg'),
    Ingredients(
        text: 'monterey jack cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shredded-cheese-white.jpg'),
    Ingredients(
        text: 'mushroom',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mushrooms.png'),
    Ingredients(
        text: 'mussels',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mussels.jpg'),
    Ingredients(
        text: 'mustard',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/regular-mustard.jpg'),
    Ingredients(
        text: 'mustard seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/regular-mustard.jpg'),
    Ingredients(
        text: 'napa cabbage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/napa-cabbage.jpg'),
    Ingredients(
        text: 'navel oranges',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mandarin-or-tangerines-or-clementines.jpg'),
    Ingredients(
        text: 'nectarine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/nectarines.jpg'),
    Ingredients(
        text: 'new potatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/new-potatoes.jpg'),
    Ingredients(
        text: 'non-fat greek yogurt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/filet-mignon.png'),
    Ingredients(
        text: 'nonfat cool whip',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg'),
    Ingredients(
        text: 'nonfat milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg'),
    Ingredients(
        text: 'nori',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/nori.jpg'),
    Ingredients(
        text: 'nut butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/nut-butter.png'),
    Ingredients(
        text: 'nut meal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coconut-milk.png'),
    Ingredients(
        text: 'nutella',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hazelnut-chocolate-spread.jpg'),
    Ingredients(
        text: 'nutritional yeast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/nutritional-yeast.png'),
    Ingredients(
        text: 'oat flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Ingredients(
        text: 'oats',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg'),
    Ingredients(
        text: 'oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Ingredients(
        text: 'oil packed sun dried tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/canned-tuna.png'),
    Ingredients(
        text: 'okra',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/okra.png'),
    Ingredients(
        text: 'old bay seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Ingredients(
        text: 'olive oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/olives-mixed.jpg'),
    Ingredients(
        text: 'olives',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/olives-mixed.jpg'),
    Ingredients(
        text: 'onion',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Ingredients(
        text: 'onion powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Ingredients(
        text: 'onion soup mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Ingredients(
        text: 'orange',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Ingredients(
        text: 'orange bell pepper',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Ingredients(
        text: 'orange juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Ingredients(
        text: 'orange juice concentrate',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Ingredients(
        text: 'orange liqueur',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Ingredients(
        text: 'orange marmalade',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Ingredients(
        text: 'orange oil',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Ingredients(
        text: 'orange zest',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Ingredients(
        text: 'oregano',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oregano.jpg'),
    Ingredients(
        text: 'oreo cookies',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oreos.png'),
    Ingredients(
        text: 'orzo',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orzo.jpg'),
    Ingredients(
        text: 'oyster sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oysters.jpg'),
    Ingredients(
        text: 'oysters',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oysters.jpg'),
    Ingredients(
        text: 'palm sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Ingredients(
        text: 'pancetta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pancetta.png'),
    Ingredients(
        text: 'paneer',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/paneer.png'),
    Ingredients(
        text: 'panko',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/panko.jpg'),
    Ingredients(
        text: 'papaya',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/papaya.png'),
    Ingredients(
        text: 'paprika',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bell-pepper-orange.png'),
    Ingredients(
        text: 'parmigiano reggiano',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/parmesan.jpg'),
    Ingredients(
        text: 'parsley',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parsley.jpg'),
    Ingredients(
        text: 'parsley flakes',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parsley.jpg'),
    Ingredients(
        text: 'parsnip',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parsnip.jpg'),
    Ingredients(
        text: 'part-skim mozzarella cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ricotta.png'),
    Ingredients(
        text: 'pasta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg'),
    Ingredients(
        text: 'pasta salad mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg'),
    Ingredients(
        text: 'pasta sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg'),
    Ingredients(
        text: 'pastry flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pastrami.jpg'),
    Ingredients(
        text: 'peach',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peach.png'),
    Ingredients(
        text: 'peanut butter',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png'),
    Ingredients(
        text: 'peanut butter chips',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png'),
    Ingredients(
        text: 'peanut butter cups',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png'),
    Ingredients(
        text: 'peanut oil',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png'),
    Ingredients(
        text: 'peanuts',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png'),
    Ingredients(
        text: 'pear liqueur',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pear-juice.jpg'),
    Ingredients(
        text: 'pearl barley',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pearl-onions.png'),
    Ingredients(
        text: 'pearl onions',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pearl-onions.png'),
    Ingredients(
        text: 'peas',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peas.jpg'),
    Ingredients(
        text: 'pecan',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pecans.jpg'),
    Ingredients(
        text: 'pecan pieces',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pecans.jpg'),
    Ingredients(
        text: 'pecorino',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/parmesan.jpg'),
    Ingredients(
        text: 'penne',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/penne-pasta.jpg'),
    Ingredients(
        text: 'peperoncino',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pepperoncini.jpg'),
    Ingredients(
        text: 'pepper jack cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Ingredients(
        text: 'peppercorns',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Ingredients(
        text: 'peppermint baking chips',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Ingredients(
        text: 'peppermint extract',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Ingredients(
        text: 'pepperoni',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Ingredients(
        text: 'peppers',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Ingredients(
        text: 'pesto',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/basil-pesto.png'),
    Ingredients(
        text: 'pickle relish',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dill-pickles.jpg'),
    Ingredients(
        text: 'pickles',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dill-pickles.jpg'),
    Ingredients(
        text: 'pico de gallo',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pico-de-gallo.png'),
    Ingredients(
        text: 'pie crust',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pie-crust.jpg'),
    Ingredients(
        text: 'pimento stuffed olives',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pimento.png'),
    Ingredients(
        text: 'pimientos',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pimento.png'),
    Ingredients(
        text: 'pine nuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pine-nuts.png'),
    Ingredients(
        text: 'pineapple',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg'),
    Ingredients(
        text: 'pineapple chunks',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg'),
    Ingredients(
        text: 'pineapple in juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg'),
    Ingredients(
        text: 'pineapple juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg'),
    Ingredients(
        text: 'pink himalayan salt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Ingredients(
        text: 'pinto beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pinto-beans.jpg'),
    Ingredients(
        text: 'pistachios',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pistachios.jpg'),
    Ingredients(
        text: 'pita',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pita-bread.jpg'),
    Ingredients(
        text: 'pizza crust',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Ingredients(
        text: 'pizza mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Ingredients(
        text: 'plain greek yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Ingredients(
        text: 'plain nonfat yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Ingredients(
        text: 'plain yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Ingredients(
        text: 'plantain',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/plantains.jpg'),
    Ingredients(
        text: 'plum',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/plum.jpg'),
    Ingredients(
        text: 'plum tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/plum-sauce.png'),
    Ingredients(
        text: 'poblano peppers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/poblano-peppers.jpg'),
    Ingredients(
        text: 'polenta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cornmeal.png'),
    Ingredients(
        text: 'polish sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/smoked-sausage.png'),
    Ingredients(
        text: 'pomegranate juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pomegranate.jpg'),
    Ingredients(
        text: 'pomegranate molasses',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pomegranate.jpg'),
    Ingredients(
        text: 'pomegranate seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pomegranate.jpg'),
    Ingredients(
        text: 'popcorn',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/popcorn-kernels.jpg'),
    Ingredients(
        text: 'poppy seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/poppyseed.png'),
    Ingredients(
        text: 'pork',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-tenderloin-raw.png'),
    Ingredients(
        text: 'Pork & Beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-tenderloin-raw.png'),
    Ingredients(
        text: 'pork belly',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Ingredients(
        text: 'pork butt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Ingredients(
        text: 'pork chops',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Ingredients(
        text: 'pork links',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Ingredients(
        text: 'pork loin chops',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Ingredients(
        text: 'pork loin roast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Ingredients(
        text: 'pork roast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Ingredients(
        text: 'pork shoulder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Ingredients(
        text: 'pork tenderloin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Ingredients(
        text: 'port',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/guinness.png'),
    Ingredients(
        text: 'portabella mushrooms',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/portabello-mushrooms.jpg'),
    Ingredients(
        text: 'pot roast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pot-roast.jpg'),
    Ingredients(
        text: 'potato chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png'),
    Ingredients(
        text: 'potato starch',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png'),
    Ingredients(
        text: 'potatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png'),
    Ingredients(
        text: 'poultry seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.jpg'),
    Ingredients(
        text: 'powdered sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg'),
    Ingredients(
        text: 'pretzel sandwiches',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pretzels.jpg'),
    Ingredients(
        text: 'processed american cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/american-cheese.jpg'),
    Ingredients(
        text: 'prosciutto',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/proscuitto.jpg'),
    Ingredients(
        text: 'provolone cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/provolone-slices.jpg'),
    Ingredients(
        text: 'prunes',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/prunes.jpg'),
    Ingredients(
        text: 'puff pastry',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/puff-pastry.png'),
    Ingredients(
        text: 'pumpkin',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png'),
    Ingredients(
        text: 'pumpkin pie filling',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png'),
    Ingredients(
        text: 'pumpkin pie spice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png'),
    Ingredients(
        text: 'pumpkin puree',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png'),
    Ingredients(
        text: 'pumpkin seeds',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png'),
    Ingredients(
        text: 'queso fresco',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheez-whiz.jpg'),
    Ingredients(
        text: 'quick cooking oats',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg'),
    Ingredients(
        text: 'quinoa',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-quinoa.png'),
    Ingredients(
        text: 'quinoa flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-quinoa.png'),
    Ingredients(
        text: 'radicchio',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/radicchio.jpg'),
    Ingredients(
        text: 'radishes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/radishes.jpg'),
    Ingredients(
        text: 'raisins',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/raisins.jpg'),
    Ingredients(
        text: 'ramen noodles',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ramen.jpg'),
    Ingredients(
        text: 'ranch dressing',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ranch-dressing.jpg'),
    Ingredients(
        text: 'ranch dressing mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ranch-dressing.jpg'),
    Ingredients(
        text: 'raspberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raspberries.jpg'),
    Ingredients(
        text: 'raspberry jam',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raspberries.jpg'),
    Ingredients(
        text: 'raw cashews',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cashews.jpg'),
    Ingredients(
        text: 'raw shrimp',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-brown-sugar.png'),
    Ingredients(
        text: 'ready-to-serve Asian fried rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pie-crust.jpg'),
    Ingredients(
        text: 'real bacon recipe pieces',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bacon-bits.jpg'),
    Ingredients(
        text: 'red apples',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-delicious-apples.png'),
    Ingredients(
        text: 'red bell peppers',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beets.jpg'),
    Ingredients(
        text: 'red cabbage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Ingredients(
        text: 'red chilli',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Ingredients(
        text: 'red delicious apples',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-delicious-apples.png'),
    Ingredients(
        text: 'red food coloring',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/food-coloring.png'),
    Ingredients(
        text: 'red grapefruit juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg'),
    Ingredients(
        text: 'red grapes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg'),
    Ingredients(
        text: 'red kidney beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/kidney-beans.jpg'),
    Ingredients(
        text: 'red lentils',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-lentils.png'),
    Ingredients(
        text: 'red onion',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-onion.png'),
    Ingredients(
        text: 'red pepper flakes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-plum.png'),
    Ingredients(
        text: 'red pepper powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-plum.png'),
    Ingredients(
        text: 'red potatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-plum.png'),
    Ingredients(
        text: 'red velvet cookie',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine-vinegar.jpg'),
    Ingredients(
        text: 'red wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Ingredients(
        text: 'red wine vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Ingredients(
        text: 'reduced fat shredded cheddar cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mayonnaise.png'),
    Ingredients(
        text: 'refried beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png'),
    Ingredients(
        text: 'refrigerated crescent rolls',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png'),
    Ingredients(
        text: 'refrigerated pizza dough',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png'),
    Ingredients(
        text: 'refrigerated sugar cookie dough',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png'),
    Ingredients(
        text: 'rhubarb',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/rhubarb.jpg'),
    Ingredients(
        text: 'rib tips',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/no.jpg'),
    Ingredients(
        text: 'rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-white-rice.png'),
    Ingredients(
        text: 'rice flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Ingredients(
        text: 'rice krispies cereal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Ingredients(
        text: 'rice milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Ingredients(
        text: 'rice noodles',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Ingredients(
        text: 'rice paper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Ingredients(
        text: 'rice syrup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Ingredients(
        text: 'rice vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Ingredients(
        text: 'rice wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Ingredients(
        text: 'ricotta salata',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ricotta.png'),
    Ingredients(
        text: 'ritz crackers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/crackers.jpg'),
    Ingredients(
        text: 'roast beef',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg'),
    Ingredients(
        text: 'roasted chicken',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg'),
    Ingredients(
        text: 'roasted nuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg'),
    Ingredients(
        text: 'roasted peanuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg'),
    Ingredients(
        text: 'roasted red peppers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg'),
    Ingredients(
        text: 'roma tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roma-tomatoes.png'),
    Ingredients(
        text: 'romaine lettuce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/romaine.jpg'),
    Ingredients(
        text: 'root vegetables',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg'),
    Ingredients(
        text: 'rosemary',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rosemary.jpg'),
    Ingredients(
        text: 'rotisserie chicken',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rotisserie-chicken.png'),
    Ingredients(
        text: 'round steak',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/round-steak.jpg'),
    Ingredients(
        text: 'rub',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Ingredients(
        text: 'rum extract',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vanilla-extract.jpg'),
    Ingredients(
        text: 'runny honey',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png'),
    Ingredients(
        text: 'russet potatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/russet-or-idaho-potatoes.png'),
    Ingredients(
        text: 'rutabaga',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rutabaga.jpg'),
    Ingredients(
        text: 'rye bread',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beer.jpg'),
    Ingredients(
        text: 'rye meal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Ingredients(
        text: 'saffron threads',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/saffron.jpg'),
    Ingredients(
        text: 'sage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-sage.png'),
    Ingredients(
        text: 'sage leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-sage.png'),
    Ingredients(
        text: 'salad dressing',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Ingredients(
        text: 'salami',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salami.jpg'),
    Ingredients(
        text: 'salmon fillet',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salmon.png'),
    Ingredients(
        text: 'salsa',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salsa.png'),
    Ingredients(
        text: 'salsa verde',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salsa.png'),
    Ingredients(
        text: 'salt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salt.jpg'),
    Ingredients(
        text: 'salt and pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cod-fillet.jpg'),
    Ingredients(
        text: 'salted butter',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/butter.jpg'),
    Ingredients(
        text: 'saltine crackers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/saltine-crackers.jpg'),
    Ingredients(
        text: 'sandwich bun',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/kaiser-roll.png'),
    Ingredients(
        text: 'sauerkraut',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sour-cream.jpg'),
    Ingredients(
        text: 'sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-pork-sausage.png'),
    Ingredients(
        text: 'sausage links',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-pork-sausage.png'),
    Ingredients(
        text: 'scotch bonnet chili',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whiskey-bottle.jpg'),
    Ingredients(
        text: 'sea salt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Ingredients(
        text: 'sea scallops',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Ingredients(
        text: 'seasoned bread crumbs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Ingredients(
        text: 'seasoned rice vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Ingredients(
        text: 'seasoned salt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Ingredients(
        text: 'seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Ingredients(
        text: 'seasoning blend',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Ingredients(
        text: 'seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sunflower-seeds.jpg'),
    Ingredients(
        text: 'self-rising flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Ingredients(
        text: 'semi sweet chocolate chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chocolate-chips.jpg'),
    Ingredients(
        text: 'serrano chile',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/proscuitto.jpg'),
    Ingredients(
        text: 'sesame oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sesame-seeds.png'),
    Ingredients(
        text: 'sesame seed hamburger buns',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sesame-seeds.png'),
    Ingredients(
        text: 'sesame seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sesame-seeds.png'),
    Ingredients(
        text: 'shallot',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shallots.jpg'),
    Ingredients(
        text: 'sharp cheddar cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'sheeps milk cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'shells',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shell-pasta.jpg'),
    Ingredients(
        text: 'sherry',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dry-sherry.png'),
    Ingredients(
        text: 'sherry',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dry-sherry.png'),
    Ingredients(
        text: 'sherry vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dry-sherry.png'),
    Ingredients(
        text: 'shiitake mushroom caps',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shiitake-mushrooms.png'),
    Ingredients(
        text: 'short grain rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Ingredients(
        text: 'short pasta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Ingredients(
        text: 'short ribs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Ingredients(
        text: 'shortbread cookies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Ingredients(
        text: 'shortcrust pastry',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Ingredients(
        text: 'shortening',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Ingredients(
        text: 'shredded cheddar cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'shredded cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'shredded chicken',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'shredded coconut',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'shredded mexican cheese blend',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'shredded mexican cheese blend',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'shredded mozzarella',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'silken tofu',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tofu.png'),
    Ingredients(
        text: 'sirloin steak',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sirloin-steak.png'),
    Ingredients(
        text: 'skim milk ricotta',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg'),
    Ingredients(
        text: 'skim vanilla greek yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg'),
    Ingredients(
        text: 'skin-on bone-in chicken leg quarters',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chicken-drumsticks.jpg'),
    Ingredients(
        text: 'skinless boneless chicken breast halves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chicken-thighs.png'),
    Ingredients(
        text: 'skinless boneless chicken thighs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chicken-thighs.png'),
    Ingredients(
        text: 'skinned black gram',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/urad-dal.png'),
    Ingredients(
        text: 'slaw dressing',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coleslaw.png'),
    Ingredients(
        text: 'slaw mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coleslaw.png'),
    Ingredients(
        text: 'slivered almonds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/almonds-slivered.png'),
    Ingredients(
        text: 'smoked paprika',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg'),
    Ingredients(
        text: 'smoked salmon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg'),
    Ingredients(
        text: 'smoked sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg'),
    Ingredients(
        text: 'smooth peanut butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/peanut-butter.png'),
    Ingredients(
        text: 'snapper fillets',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/snapper.jpg'),
    Ingredients(
        text: 'snow peas',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/snow-peas.jpg'),
    Ingredients(
        text: 'soda water',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sparkling-water.png'),
    Ingredients(
        text: 'sour cream',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Ingredients(
        text: 'sourdough bowl',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sourdough-bread.jpg'),
    Ingredients(
        text: 'sourdough bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sourdough-bread.jpg'),
    Ingredients(
        text: 'soy milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soy-milk.jpg'),
    Ingredients(
        text: 'soy protein powder',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/okara.png'),
    Ingredients(
        text: 'soy sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg'),
    Ingredients(
        text: 'spaghetti',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/spaghetti.jpg'),
    Ingredients(
        text: 'spaghetti squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/spaghetti.jpg'),
    Ingredients(
        text: 'sparkling wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/champagne.png'),
    Ingredients(
        text: 'spelt flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/farro-or-spelt.jpg'),
    Ingredients(
        text: 'spicy brown mustard',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Ingredients(
        text: 'spinach',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/spinach.jpg'),
    Ingredients(
        text: 'sprite',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg'),
    Ingredients(
        text: 'sprouts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/alfalfa-sprouts.png'),
    Ingredients(
        text: 'squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/butternut-squash.jpg'),
    Ingredients(
        text: 'sriracha sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hot-sauce-or-tabasco.png'),
    Ingredients(
        text: 'steaks',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ribeye-raw.jpg'),
    Ingredients(
        text: 'steel cut oats',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/steel-cut-oats.png'),
    Ingredients(
        text: 'stevia',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/stevia.png'),
    Ingredients(
        text: 'stew meat',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/beef-cubes-raw.png'),
    Ingredients(
        text: 'stew vegetables',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/beef-cubes-raw.png'),
    Ingredients(
        text: 'stock',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chicken-broth.png'),
    Ingredients(
        text: 'store-bought phyllo',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/filo-dough.png'),
    Ingredients(
        text: 'stout',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/guinness.png'),
    Ingredients(
        text: 'strawberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/strawberries.png'),
    Ingredients(
        text: 'strawberry jam',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/strawberries.png'),
    Ingredients(
        text: 'strawberry jello',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/strawberries.png'),
    Ingredients(
        text: 'stuffing',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stuffing-mix.png'),
    Ingredients(
        text: 'stuffing mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stuffing-mix.png'),
    Ingredients(
        text: 'sub rolls',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/french-rolls.jpg'),
    Ingredients(
        text: 'sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png'),
    Ingredients(
        text: 'sugar snap peas',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png'),
    Ingredients(
        text: 'sugar syrup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png'),
    Ingredients(
        text: 'sukrin sweetener',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sugar-substitute.jpg'),
    Ingredients(
        text: 'summer savory',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yellow-squash.jpg'),
    Ingredients(
        text: 'summer squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yellow-squash.jpg'),
    Ingredients(
        text: 'sunflower oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Ingredients(
        text: 'sunflower seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Ingredients(
        text: 'sweet chilli sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'sweet onion',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'sweet paprika',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'sweet pickle juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'sweet pickle relish',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'sweet potato',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'sweet tea',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'sweetened coconut',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'sweetened condensed milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'sweetened shredded coconut',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Ingredients(
        text: 'swiss chard',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/swiss-chard.jpg'),
    Ingredients(
        text: 'swiss cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/swiss-chard.jpg'),
    Ingredients(
        text: 'taco seasoning mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/taco-shells.jpg'),
    Ingredients(
        text: 'taco shells',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/taco-shells.jpg'),
    Ingredients(
        text: 'tahini',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tahini-paste.png'),
    Ingredients(
        text: 'tamari',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tamarind.png'),
    Ingredients(
        text: 'tapioca flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sago-pearls.png'),
    Ingredients(
        text: 'tarragon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tarragon.jpg'),
    Ingredients(
        text: 'tart apple',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/grannysmith-apple.png'),
    Ingredients(
        text: 'tea bags',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Ingredients(
        text: 'tequila',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tequila.png'),
    Ingredients(
        text: 'teriyaki sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Ingredients(
        text: 'thai basil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/lemon-basil.jpg'),
    Ingredients(
        text: 'thai chiles',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/lemon-basil.jpg'),
    Ingredients(
        text: 'thai red curry paste',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/lemon-basil.jpg'),
    Ingredients(
        text: 'thick-cut bacon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-bacon.png'),
    Ingredients(
        text: 'tilapia fillets',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-tilapia.jpg'),
    Ingredients(
        text: 'toast',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/toast.jpg'),
    Ingredients(
        text: 'toffee bits',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/toffee-pieces.jpg'),
    Ingredients(
        text: 'tofu',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/beancurd-sheets.jpg'),
    Ingredients(
        text: 'tomatillos',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Ingredients(
        text: 'tomato juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Ingredients(
        text: 'tomato paste',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Ingredients(
        text: 'tomato puree',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Ingredients(
        text: 'tomato sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Ingredients(
        text: 'tomato soup',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Ingredients(
        text: 'tomatoes',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Ingredients(
        text: 'top blade steak',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/blade-steak.png'),
    Ingredients(
        text: 'top round steak',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/round-steak.jpg'),
    Ingredients(
        text: 'Top Sirloin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/top-sirloin-steak.jpg'),
    Ingredients(
        text: 'tortilla',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/flour-tortilla.jpg'),
    Ingredients(
        text: 'tortilla chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/flour-tortilla.jpg'),
    Ingredients(
        text: 'triple sec',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Ingredients(
        text: 'truffle oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/truffle-oil.jpg'),
    Ingredients(
        text: 'tuna',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/canned-tuna.png'),
    Ingredients(
        text: 'turbinado sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-brown-sugar.png'),
    Ingredients(
        text: 'turkey',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/turkey-raw-whole.jpg'),
    Ingredients(
        text: 'turkey breast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/turkey-raw-whole.jpg'),
    Ingredients(
        text: 'turkey kielbasa',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/turkey-raw-whole.jpg'),
    Ingredients(
        text: 'turmeric',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/turmeric.jpg'),
    Ingredients(
        text: 'turnips',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/turnips.png'),
    Ingredients(
        text: 'unbleached flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Ingredients(
        text: 'unsalted butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg'),
    Ingredients(
        text: 'unsmoked back bacon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/canadian-bacon.png'),
    Ingredients(
        text: 'unsweetened applesauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Ingredients(
        text: 'unsweetened coconut milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Ingredients(
        text: 'unsweetened shredded coconut',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Ingredients(
        text: 'vanilla bean',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Ingredients(
        text: 'vanilla bean paste',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Ingredients(
        text: 'vanilla essence',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Ingredients(
        text: 'vanilla extract',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Ingredients(
        text: 'vanilla frosting',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Ingredients(
        text: 'vanilla instant pudding mix',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Ingredients(
        text: 'vanilla protein powder',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Ingredients(
        text: 'vanilla wafers',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Ingredients(
        text: 'vanilla yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Ingredients(
        text: 'vegan cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'vegan chocolate chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'vegan margarine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Ingredients(
        text: 'vegetable broth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-vegetables.png'),
    Ingredients(
        text: 'vegetable oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-vegetables.png'),
    Ingredients(
        text: 'vegetarian bacon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-vegetables.png'),
    Ingredients(
        text: 'vermouth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vermouth.jpg'),
    Ingredients(
        text: 'vinaigrette',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinaigrette.jpg'),
    Ingredients(
        text: 'vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Ingredients(
        text: 'vodka',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vodka.jpg'),
    Ingredients(
        text: 'walnuts',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/walnuts.jpg'),
    Ingredients(
        text: 'water',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png'),
    Ingredients(
        text: 'water chestnuts',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png'),
    Ingredients(
        text: 'water-packed tuna',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png'),
    Ingredients(
        text: 'watercress',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png'),
    Ingredients(
        text: 'watermelon chunks',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png'),
    Ingredients(
        text: 'wheat bran',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/wheat-germ.png'),
    Ingredients(
        text: 'wheat germ',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/wheat-germ.png'),
    Ingredients(
        text: 'whipped cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whipped-cream.jpg'),
    Ingredients(
        text: 'whipped topping',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whipped-cream.jpg'),
    Ingredients(
        text: 'whipping cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whipped-cream.jpg'),
    Ingredients(
        text: 'whiskey',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whiskey-bottle.jpg'),
    Ingredients(
        text: 'white balsamic vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Ingredients(
        text: 'white bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Ingredients(
        text: 'white cake mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Ingredients(
        text: 'white cheddar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Ingredients(
        text: 'white chocolate',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Ingredients(
        text: 'white chocolate chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Ingredients(
        text: 'white onion',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Ingredients(
        text: 'white pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Ingredients(
        text: 'white whole wheat flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Ingredients(
        text: 'white wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Ingredients(
        text: 'white wine vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Ingredients(
        text: 'whole allspice berries',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Ingredients(
        text: 'whole chicken',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Ingredients(
        text: 'whole coriander seeds',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Ingredients(
        text: 'whole cranberry sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Ingredients(
        text: 'whole kernel corn',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Ingredients(
        text: 'whole star anise',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Ingredients(
        text: 'whole wheat bread',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Ingredients(
        text: 'whole wheat flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Ingredients(
        text: 'whole wheat tortillas',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Ingredients(
        text: 'whole-grain mustard',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Ingredients(
        text: 'wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Ingredients(
        text: 'wine vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine-vinegar.jpg'),
    Ingredients(
        text: 'winter squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/butternut-squash.jpg'),
    Ingredients(
        text: 'won ton wraps',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/wonton-wrappers.jpg'),
    Ingredients(
        text: 'worcestershire sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Ingredients(
        text: 'wraps',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/flour-tortilla.jpg'),
    Ingredients(
        text: 'xanthan gum',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-powder.jpg'),
    Ingredients(
        text: 'yeast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Ingredients(
        text: 'yellow bell pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Ingredients(
        text: 'yellow cake mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Ingredients(
        text: 'yellow onion',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Ingredients(
        text: 'yogurt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/plain-yogurt.jpg'),
    Ingredients(
        text: 'yukon gold potato',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png'),
  ];
  UnmodifiableListView get ingredients {
    return UnmodifiableListView(_ingredients);
  }

  void checkBoxToggler(Ingredients ingredients) {
    ingredients.toggleCheckBox();
    notifyListeners();
  }

  void addSelectedIngredient(Ingredients ingredient) {
    selectedIngredients.add(ingredient);
    notifyListeners();
  }

  void removeSelectedIngredient(Ingredients ingredient) {
    selectedIngredients.remove(ingredient);
    notifyListeners();
  }

  List<Ingredients> selectedIngredients = [];
}

import 'dart:collection';

import 'Incredients.dart';

class IncredientsHandler {
  List<Incredients> _incredients = [
    Incredients(
        text: '5 spice powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chinese-five-spice-powder.png'),
    Incredients(
        text: 'acorn squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/acorn-squash.jpg'),
    Incredients(
        text: 'adobo sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/harissa.jpg'),
    Incredients(
        text: 'agave nectar',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/agave.png'),
    Incredients(
        text: 'ahi tuna',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tuna-steak.png'),
    Incredients(
        text: 'alfredo pasta sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/alfredo-sauce.png'),
    Incredients(
        text: 'almond extract',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg'),
    Incredients(
        text: 'almond flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg'),
    Incredients(
        text: 'almond milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg'),
    Incredients(
        text: 'almonds',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg'),
    Incredients(
        text: 'amaretto',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/temporary-orange-liqueur.jpg'),
    Incredients(
        text: 'ancho chiles',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/anchovies.jpg'),
    Incredients(
        text: 'anchovies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/anchovies.jpg'),
    Incredients(
        text: 'andouille sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/smoked-sausage.jpg'),
    Incredients(
        text: 'angel food cake mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/angelhair.jpg'),
    Incredients(
        text: 'angel hair pasta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/angelhair.jpg'),
    Incredients(
        text: 'angostura bitters',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Incredients(
        text: 'apple',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Incredients(
        text: 'apple butter spread',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Incredients(
        text: 'apple cider',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Incredients(
        text: 'apple juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Incredients(
        text: 'apple pie spice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Incredients(
        text: 'apricot preserves',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apricot.jpg'),
    Incredients(
        text: 'apricots',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apricot.jpg'),
    Incredients(
        text: 'arborio rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/arborio-rice.png'),
    Incredients(
        text: 'arrowroot powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-powder.jpg'),
    Incredients(
        text: 'artichoke heart quarters',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/artichokes.png'),
    Incredients(
        text: 'artichokes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/artichokes.png'),
    Incredients(
        text: 'arugula',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/arugula-or-rocket-salad.jpg'),
    Incredients(
        text: 'asafoetida',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/curry-powder.jpg'),
    Incredients(
        text: 'asafoetida powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/curry-powder.jpg'),
    Incredients(
        text: 'asiago cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/parmesan.jpg'),
    Incredients(
        text: 'asian pear',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/asian-medley.png'),
    Incredients(
        text: 'asparagus spears',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/asparagus.png'),
    Incredients(
        text: 'avocado',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/avocado.jpg'),
    Incredients(
        text: 'avocado oil',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/avocado.jpg'),
    Incredients(
        text: 'baby bell peppers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg'),
    Incredients(
        text: 'baby bok choy',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg'),
    Incredients(
        text: 'baby carrots',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg'),
    Incredients(
        text: 'baby corn',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg'),
    Incredients(
        text: 'baby spinach leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg'),
    Incredients(
        text: 'baby-back ribs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-back-ribs.jpg'),
    Incredients(
        text: 'baby-back ribs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baby-back-ribs.jpg'),
    Incredients(
        text: 'bacon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-bacon.png'),
    Incredients(
        text: 'bacon fat',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-bacon.png'),
    Incredients(
        text: 'baguette',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/half-baguette.jpg'),
    Incredients(
        text: 'baking bar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Incredients(
        text: 'baking powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Incredients(
        text: 'baking soda',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Incredients(
        text: 'balsamic glaze',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Incredients(
        text: 'balsamic vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Incredients(
        text: 'bamboo shoots',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bamboo-shoots.jpg'),
    Incredients(
        text: 'banana',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/bananas.jpg'),
    Incredients(
        text: 'basmati rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-white-long-grain-or-basmatii-cooked.jpg'),
    Incredients(
        text: 'bay leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bay-leaves.jpg'),
    Incredients(
        text: 'bbq sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Incredients(
        text: 'beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bean-sprouts.jpg'),
    Incredients(
        text: 'beef',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/beef-cubes-raw.png'),
    Incredients(
        text: 'beef brisket',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg'),
    Incredients(
        text: 'beef broth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg'),
    Incredients(
        text: 'beef chuck roast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg'),
    Incredients(
        text: 'beef stock',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg'),
    Incredients(
        text: 'beef tenderloin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg'),
    Incredients(
        text: 'beer',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beer.jpg'),
    Incredients(
        text: 'beer',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beer.jpg'),
    Incredients(
        text: 'beets',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beets.jpg'),
    Incredients(
        text: 'bell pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bell-pepper-orange.png'),
    Incredients(
        text: 'berries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/berries-mixed.jpg'),
    Incredients(
        text: 'biscuit mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk-biscuits.jpg'),
    Incredients(
        text: 'biscuits',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk-biscuits.jpg'),
    Incredients(
        text: 'bittersweet chocolate',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Incredients(
        text: 'black bean sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Incredients(
        text: 'black beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Incredients(
        text: 'black olives',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Incredients(
        text: 'black pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Incredients(
        text: 'black sesame seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Incredients(
        text: 'blackberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Incredients(
        text: 'blanched almonds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/blanched-almonds.png'),
    Incredients(
        text: 'blood orange',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/blood-orange.jpg'),
    Incredients(
        text: 'blue cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/blue-cheese.png'),
    Incredients(
        text: 'blueberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/blueberries.jpg'),
    Incredients(
        text: 'bok choy',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bok-choy.jpg'),
    Incredients(
        text: 'boneless skinless chicken breast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-loin.jpg'),
    Incredients(
        text: 'bourbon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vanilla-extract.jpg'),
    Incredients(
        text: 'brandy',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/brandy.png'),
    Incredients(
        text: 'bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-bread.jpg'),
    Incredients(
        text: 'bread flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-bread.jpg'),
    Incredients(
        text: 'breakfast links',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/breakfast-sausage-links.jpg'),
    Incredients(
        text: 'brie',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/brie.jpg'),
    Incredients(
        text: 'broccoli',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/broccoli.jpg'),
    Incredients(
        text: 'broccoli florets',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/broccoli.jpg'),
    Incredients(
        text: 'brown rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png'),
    Incredients(
        text: 'brown rice flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png'),
    Incredients(
        text: 'brown sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png'),
    Incredients(
        text: 'brownie mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png'),
    Incredients(
        text: 'brussel sprouts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brussels-sprouts.jpg'),
    Incredients(
        text: 'bulgur',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bulgur-wheat.jpg'),
    Incredients(
        text: 'butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg'),
    Incredients(
        text: 'butterhead lettuce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg'),
    Incredients(
        text: 'buttermilk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg'),
    Incredients(
        text: 'butternut squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg'),
    Incredients(
        text: 'butterscotch chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg'),
    Incredients(
        text: 'cabbage',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cabbage.jpg'),
    Incredients(
        text: 'caesar dressing',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coleslaw-or-caesar-dressing.jpg'),
    Incredients(
        text: 'cajun seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chili-powder.jpg'),
    Incredients(
        text: 'cake flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Incredients(
        text: 'candy canes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/candy-corn.jpg'),
    Incredients(
        text: 'candy coating',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/candy-corn.jpg'),
    Incredients(
        text: 'candy melts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/candy-corn.jpg'),
    Incredients(
        text: 'canned black beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'canned diced tomatoes',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'canned garbanzo beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'canned green chiles',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'canned kidney beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'canned mushrooms',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'canned pinto beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'canned red kidney beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'canned tomatoes',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'canned tuna',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'canned white beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'canned white cannellini beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'cannellini beans',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'cantaloupe',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cantaloupe.png'),
    Incredients(
        text: 'capers',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/capers.jpg'),
    Incredients(
        text: 'caramel sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soft-caramels.jpg'),
    Incredients(
        text: 'caramels',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soft-caramels.jpg'),
    Incredients(
        text: 'caraway seed',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/caraway-seeds.jpg'),
    Incredients(
        text: 'cardamom',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cardamom.jpg'),
    Incredients(
        text: 'cardamom pods',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cardamom.jpg'),
    Incredients(
        text: 'carp',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fish-fillet.jpg'),
    Incredients(
        text: 'carrots',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sliced-carrot.png'),
    Incredients(
        text: 'cat fish filets',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/catfish.jpg'),
    Incredients(
        text: 'cauliflower',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cauliflower.jpg'),
    Incredients(
        text: 'cauliflower florets',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cauliflower.jpg'),
    Incredients(
        text: 'cauliflower rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cauliflower.jpg'),
    Incredients(
        text: 'celery',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg'),
    Incredients(
        text: 'celery ribs',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg'),
    Incredients(
        text: 'celery root',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg'),
    Incredients(
        text: 'celery salt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg'),
    Incredients(
        text: 'celery seed',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg'),
    Incredients(
        text: 'cereal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-crispy-cereal.png'),
    Incredients(
        text: 'champagne',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/champagne.png'),
    Incredients(
        text: 'chana dal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bengal-gram.png'),
    Incredients(
        text: 'cheddar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'cheese curds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'cheese dip',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'cheese soup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'cheese tortellini',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'cherry',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cherries.jpg'),
    Incredients(
        text: 'cherry pie filling',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cherries.jpg'),
    Incredients(
        text: 'cherry tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cherries.jpg'),
    Incredients(
        text: 'chestnuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chestnuts.jpg'),
    Incredients(
        text: 'chia seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chia-seeds.jpg'),
    Incredients(
        text: 'chicken base',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken bouillon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken bouillon granules',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken breasts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken broth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken drumsticks',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken legs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken pieces',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken stock',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken tenders',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken thighs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chicken wings',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chickpea',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'chile garlic sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Incredients(
        text: 'chili paste',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Incredients(
        text: 'chili peppers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Incredients(
        text: 'chili powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Incredients(
        text: 'chili sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Incredients(
        text: 'chipotle chiles in adobo',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chile-chipotle.jpg'),
    Incredients(
        text: 'chipotle chilies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chile-chipotle.jpg'),
    Incredients(
        text: 'chipotle peppers in adobo',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chile-chipotle.jpg'),
    Incredients(
        text: 'chive & onion cream cheese spread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-chives.jpg'),
    Incredients(
        text: 'chocolate',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Incredients(
        text: 'chocolate chip cookies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Incredients(
        text: 'chocolate chunks',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Incredients(
        text: 'chocolate ice cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Incredients(
        text: 'chocolate milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Incredients(
        text: 'chocolate sandwich cookies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Incredients(
        text: 'chocolate syrup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Incredients(
        text: 'chocolate wafer cookies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg'),
    Incredients(
        text: 'chorizo sausage',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/chorizo.jpg'),
    Incredients(
        text: 'cider vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/apple-cider-vinegar.jpg'),
    Incredients(
        text: 'cilantro',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cilantro.png'),
    Incredients(
        text: 'cinnamon roll',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg'),
    Incredients(
        text: 'cinnamon stick',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg'),
    Incredients(
        text: 'cinnamon sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg'),
    Incredients(
        text: 'cinnamon swirl bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg'),
    Incredients(
        text: 'clam juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/clam-juice.png'),
    Incredients(
        text: 'clams',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/clams.jpg'),
    Incredients(
        text: 'clarified butter',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ghee.jpg'),
    Incredients(
        text: 'clove',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cloves.jpg'),
    Incredients(
        text: 'coarse salt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salt.jpg'),
    Incredients(
        text: 'coarsely ground pepper',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salt.jpg'),
    Incredients(
        text: 'cocoa nibs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Incredients(
        text: 'cocoa powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Incredients(
        text: 'coconut',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Incredients(
        text: 'coconut aminos',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Incredients(
        text: 'coconut butter',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Incredients(
        text: 'coconut cream',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Incredients(
        text: 'coconut extract',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Incredients(
        text: 'coconut flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Incredients(
        text: 'coconut milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Incredients(
        text: 'coconut oil',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Incredients(
        text: 'coconut water',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg'),
    Incredients(
        text: 'cod',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cod-fillet.jpg'),
    Incredients(
        text: 'coffee',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brewed-coffee.jpg'),
    Incredients(
        text: 'cognac',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cognac.jpg'),
    Incredients(
        text: 'cola',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coca-cola.png'),
    Incredients(
        text: 'colby jack',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/colby-jack.jpg'),
    Incredients(
        text: 'collard greens',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/collard-greens.jpg'),
    Incredients(
        text: 'condensed cream of celery soup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/evaporated-milk.png'),
    Incredients(
        text: 'condensed cream of mushroom soup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/evaporated-milk.png'),
    Incredients(
        text: 'confectioners swerve',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/powdered-sugar.jpg'),
    Incredients(
        text: 'cooked bacon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Incredients(
        text: 'cooked brown rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Incredients(
        text: 'cooked chicken breast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Incredients(
        text: 'cooked ham',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Incredients(
        text: 'cooked long grain rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Incredients(
        text: 'cooked pasta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Incredients(
        text: 'cooked polenta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Incredients(
        text: 'cooked quinoa',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Incredients(
        text: 'cooked wild rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Incredients(
        text: 'cookies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortbread-cookies.jpg'),
    Incredients(
        text: 'coriander',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cilantro.png'),
    Incredients(
        text: 'corn',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'corn bread mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Incredients(
        text: 'corn chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Incredients(
        text: 'corn flakes cereal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Incredients(
        text: 'corn flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Incredients(
        text: 'corn kernels',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Incredients(
        text: 'corn oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Incredients(
        text: 'corn tortillas',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Incredients(
        text: 'cornbread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cornbread.jpg'),
    Incredients(
        text: 'corned beef',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/beef-brisket.png'),
    Incredients(
        text: 'cornish hens',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dill-pickles.jpg'),
    Incredients(
        text: 'cornmeal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cornmeal.png'),
    Incredients(
        text: 'cornstarch',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-powder.jpg'),
    Incredients(
        text: 'cotija cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/feta.png'),
    Incredients(
        text: 'cottage cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cottage-cheese.jpg'),
    Incredients(
        text: 'country bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Incredients(
        text: 'courgettes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/zucchini.jpg'),
    Incredients(
        text: 'couscous',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/couscous-cooked.jpg'),
    Incredients(
        text: 'cow pea',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/black-eyed-peas.jpg'),
    Incredients(
        text: 'crabmeat',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/crabmeat.jpg'),
    Incredients(
        text: 'cracked pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/crackers.jpg'),
    Incredients(
        text: 'cranberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cranberries.jpg'),
    Incredients(
        text: 'cranberry juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cranberries.jpg'),
    Incredients(
        text: 'cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Incredients(
        text: 'cream cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Incredients(
        text: 'cream cheese block',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Incredients(
        text: 'cream of chicken soup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Incredients(
        text: 'cream of tartar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Incredients(
        text: 'creamed corn',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Incredients(
        text: 'creamy peanut butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Incredients(
        text: 'creme fraiche',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg'),
    Incredients(
        text: 'cremini mushrooms',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mushrooms.png'),
    Incredients(
        text: 'creole seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dijon-mustard.jpg'),
    Incredients(
        text: 'crisp rice cereal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-crispy-cereal.png'),
    Incredients(
        text: 'croutons',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/croutons.png'),
    Incredients(
        text: 'crystallized ginger',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/candied-ginger-or-crystallized-ginger.jpg'),
    Incredients(
        text: 'cucumber',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cucumber.jpg'),
    Incredients(
        text: 'cumin seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ground-cumin.jpg'),
    Incredients(
        text: 'cup cake',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/plain-cupcake.jpg'),
    Incredients(
        text: 'currants',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/currants.jpg'),
    Incredients(
        text: 'curry leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chili-paste.png'),
    Incredients(
        text: 'dairy free milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Incredients(
        text: 'dark brown sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Incredients(
        text: 'dark chocolate',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Incredients(
        text: 'dark chocolate candy bars',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Incredients(
        text: 'dark chocolate chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Incredients(
        text: 'dark sesame oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Incredients(
        text: 'dates',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dates.jpg'),
    Incredients(
        text: 'deep dish pie crust',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pie-crust.jpg'),
    Incredients(
        text: 'deli ham',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham.png'),
    Incredients(
        text: 'deli turkey',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham.png'),
    Incredients(
        text: 'dessert oats',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg'),
    Incredients(
        text: 'dessert wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg'),
    Incredients(
        text: 'diced ham',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg'),
    Incredients(
        text: 'diet pop',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg'),
    Incredients(
        text: 'dijon mustard',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dijon-mustard.jpg'),
    Incredients(
        text: 'dill',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dill.jpg'),
    Incredients(
        text: 'dill pickles',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dill.jpg'),
    Incredients(
        text: 'hot dog',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/hotdogs.png'),
    Incredients(
        text: 'double cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-cream.png'),
    Incredients(
        text: 'dried apricots',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Incredients(
        text: 'dried basil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Incredients(
        text: 'dried cherries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Incredients(
        text: 'dried chorizo',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Incredients(
        text: 'dried cranberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Incredients(
        text: 'dried dill',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Incredients(
        text: 'dried onion',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Incredients(
        text: 'dried porcini mushrooms',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Incredients(
        text: 'dried rubbed sage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Incredients(
        text: 'dried thyme',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Incredients(
        text: 'dried tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png'),
    Incredients(
        text: 'dry bread crumbs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/breadcrumbs.jpg'),
    Incredients(
        text: 'dry milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg'),
    Incredients(
        text: 'dry mustard',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg'),
    Incredients(
        text: 'dry red wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Incredients(
        text: 'dry roasted peanuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Incredients(
        text: 'duck fat',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lard.png'),
    Incredients(
        text: 'dutch process cocoa powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dutch-process-cocoa-powder.png'),
    Incredients(
        text: 'edamame',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/edamame.png'),
    Incredients(
        text: 'egg substitute',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/liquid-egg-substitute.jpg'),
    Incredients(
        text: 'flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Incredients(
        text: 'flour tortillas',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Incredients(
        text: 'fontina cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/fontina.jpg'),
    Incredients(
        text: 'food dye',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/food-coloring.png'),
    Incredients(
        text: 'franks redhot sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/hotdogs.png'),
    Incredients(
        text: 'free range eggs',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg'),
    Incredients(
        text: 'french bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/crusty-bread.jpg'),
    Incredients(
        text: 'fresh basil',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fresh bean sprouts',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fresh chives',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fresh corn',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fresh corn kernels',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fresh figs',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fresh fruit',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fresh herbs',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fresh mint',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fresh mozzarella',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fresh rosemary',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fresh thyme leaves',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'fried onions',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cooked-bacon.jpg'),
    Incredients(
        text: 'frosting',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vanilla-frosting.png'),
    Incredients(
        text: 'froyo bars',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/frozen-yogurt.png'),
    Incredients(
        text: 'frozen corn',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'frozen spinach',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'fudge',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fudge-isolated.jpg'),
    Incredients(
        text: 'fudge topping',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fudge-isolated.jpg'),
    Incredients(
        text: 'garam masala',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/garam-masala.jpg'),
    Incredients(
        text: 'garbanzo bean flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chickpeas.png'),
    Incredients(
        text: 'garlic',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png'),
    Incredients(
        text: 'garlic paste',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png'),
    Incredients(
        text: 'garlic powder',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png'),
    Incredients(
        text: 'garlic powder',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png'),
    Incredients(
        text: 'garlic salt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png'),
    Incredients(
        text: 'gelatin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/gelatin-powder.jpg'),
    Incredients(
        text: 'gelatin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/gelatin-powder.jpg'),
    Incredients(
        text: 'gin',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Incredients(
        text: 'ginger',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Incredients(
        text: 'ginger ale',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Incredients(
        text: 'ginger paste',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Incredients(
        text: 'ginger-garlic paste',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Incredients(
        text: 'gingersnap cookies',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png'),
    Incredients(
        text: 'gnocchi',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/gnocchi-isolated.jpg'),
    Incredients(
        text: 'goat cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Incredients(
        text: 'golden raisins',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/corn-syrup.png'),
    Incredients(
        text: 'gorgonzola',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/gorgonzola.jpg'),
    Incredients(
        text: 'gouda cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/gouda.jpg'),
    Incredients(
        text: 'graham cracker crumbs',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Incredients(
        text: 'graham cracker pie crust',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Incredients(
        text: 'graham crackers',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Incredients(
        text: 'grain blend',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-wild-uncooked.png'),
    Incredients(
        text: 'grand marnier',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/grand-marnier.jpg'),
    Incredients(
        text: 'granny smith apples',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/grannysmith-apple.png'),
    Incredients(
        text: 'granola',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/granola.jpg'),
    Incredients(
        text: 'granulated garlic',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png'),
    Incredients(
        text: 'grape tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg'),
    Incredients(
        text: 'grapefruit',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg'),
    Incredients(
        text: 'grapeseed oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg'),
    Incredients(
        text: 'gravy',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/gravy.jpg'),
    Incredients(
        text: 'great northern beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-beans.jpg'),
    Incredients(
        text: 'greek yogurt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/plain-yogurt.jpg'),
    Incredients(
        text: 'green beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Incredients(
        text: 'green bell pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Incredients(
        text: 'green chili pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Incredients(
        text: 'green food coloring',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Incredients(
        text: 'green grapes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Incredients(
        text: 'green olives',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Incredients(
        text: 'green onions',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Incredients(
        text: 'greens',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Incredients(
        text: 'grill cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/halloumi.png'),
    Incredients(
        text: 'grill seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/halloumi.png'),
    Incredients(
        text: 'ground allspice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground ancho chili',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground beef',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground chicken',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground chipotle chile pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground cinnamon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground cinnamon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground cloves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground coriander seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground cumin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground flaxseed',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground ginger',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground lamb',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground mace',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground nutmeg',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground pork',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground pork sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'ground veal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'gruyere',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/gruyere.jpg'),
    Incredients(
        text: 'guacamole',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/guacamole.jpg'),
    Incredients(
        text: 'half n half',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg'),
    Incredients(
        text: 'halibut fillet',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/halibut-fillet.jpg'),
    Incredients(
        text: 'ham',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg'),
    Incredients(
        text: 'hamburger buns',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hamburger-bun.jpg'),
    Incredients(
        text: 'hard cooked eggs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hard-boiled-egg.png'),
    Incredients(
        text: 'harissa',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/harissa-paste.jpg'),
    Incredients(
        text: 'hash brown potatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hash-brown-potatoes.png'),
    Incredients(
        text: 'hazelnuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hazelnuts.jpg'),
    Incredients(
        text: 'healthy request cream of celery soup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cream-of-celery-soup.jpg'),
    Incredients(
        text: 'hemp seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hemp-oil.jpg'),
    Incredients(
        text: 'herbes de provence',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dried-herbs.png'),
    Incredients(
        text: 'herbs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-fresh-herbs.jpg'),
    Incredients(
        text: 'hersheys kisses brand milk chocolates',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Incredients(
        text: 'hoisin sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Incredients(
        text: 'honey mustard',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png'),
    Incredients(
        text: 'horseradish',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/horseradish.jpg'),
    Incredients(
        text: 'hot sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hot-sauce-or-tabasco.png'),
    Incredients(
        text: 'hummus',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/hummus.jpg'),
    Incredients(
        text: 'ice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ice-cubes.png'),
    Incredients(
        text: 'ice cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ice-cubes.png'),
    Incredients(
        text: 'instant chocolate pudding mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Incredients(
        text: 'instant coffee powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Incredients(
        text: 'instant espresso powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Incredients(
        text: 'instant lemon pudding mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Incredients(
        text: 'instant yeast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Incredients(
        text: 'irish cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/baileys-liqueur.png'),
    Incredients(
        text: 'italian bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg'),
    Incredients(
        text: 'italian cheese blend',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg'),
    Incredients(
        text: 'italian sausages',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg'),
    Incredients(
        text: 'italian seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg'),
    Incredients(
        text: 'jaggery',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/jaggery.jpg'),
    Incredients(
        text: 'jalapeno',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/jalapeno-pepper.png'),
    Incredients(
        text: 'jasmine rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-jasmine-cooked.jpg'),
    Incredients(
        text: 'jelly',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/grape-jelly.jpg'),
    Incredients(
        text: 'jicama',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/jicama.jpg'),
    Incredients(
        text: 'jimmies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/colorful-sprinkles.jpg'),
    Incredients(
        text: 'juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/apple-juice.jpg'),
    Incredients(
        text: 'jumbo shell pasta',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/shrimp.png'),
    Incredients(
        text: 'kaffir lime leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/lime-leaves.jpg'),
    Incredients(
        text: 'kahlua',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coffee-liqueur.jpg'),
    Incredients(
        text: 'kalamata olives',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/calamata-or-kalamata-olives.jpg'),
    Incredients(
        text: 'kale',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/kale.jpg'),
    Incredients(
        text: 'ketchup',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ketchup.png'),
    Incredients(
        text: 'lb cake',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pound-cake.jpg'),
    Incredients(
        text: 'lean ground beef',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'lean ground turkey',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'lean pork tenderloin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg'),
    Incredients(
        text: 'leeks',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/leeks.jpg'),
    Incredients(
        text: 'leg of lamb',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/leg-of-lamb.png'),
    Incredients(
        text: 'lemon',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Incredients(
        text: 'lemon curd',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Incredients(
        text: 'lemon extract',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Incredients(
        text: 'lemon juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Incredients(
        text: 'lemon peel',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Incredients(
        text: 'lemon pepper',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Incredients(
        text: 'lemon wedges',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Incredients(
        text: 'lemongrass',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Incredients(
        text: 'lettuce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/iceberg-lettuce.jpg'),
    Incredients(
        text: 'lettuce leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/iceberg-lettuce.jpg'),
    Incredients(
        text: 'light butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Incredients(
        text: 'light coconut milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Incredients(
        text: 'light corn syrup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Incredients(
        text: 'light cream cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Incredients(
        text: 'light mayonnaise',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Incredients(
        text: 'light olive oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Incredients(
        text: 'light soy sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Incredients(
        text: 'lime',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lime.jpg'),
    Incredients(
        text: 'lime juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/zest-lime.jpg'),
    Incredients(
        text: 'lime wedges',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/zest-lime.jpg'),
    Incredients(
        text: 'lime zest',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/zest-lime.jpg'),
    Incredients(
        text: 'linguine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/spaghetti.jpg'),
    Incredients(
        text: 'liquid smoke',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png'),
    Incredients(
        text: 'liquid stevia',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png'),
    Incredients(
        text: 'liquor',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg'),
    Incredients(
        text: 'live lobster',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lobster.png'),
    Incredients(
        text: 'long-grain rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rice-white-long-grain-or-basmatii-cooked.jpg'),
    Incredients(
        text: 'low fat buttermilk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Incredients(
        text: 'low fat milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Incredients(
        text: 'low fat milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Incredients(
        text: 'low fat plain yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Incredients(
        text: 'low fat ricotta cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Incredients(
        text: 'low fat sour cream',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Incredients(
        text: 'low sodium chicken broth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg'),
    Incredients(
        text: 'low sodium soy sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg'),
    Incredients(
        text: 'low-sodium chicken stock',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/broth.jpg'),
    Incredients(
        text: 'lower sodium beef broth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg'),
    Incredients(
        text: 'lump crab',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/lump-crabmeat.png'),
    Incredients(
        text: 'm&m candies',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Incredients(
        text: 'macadamia nuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/macadamia-nuts.png'),
    Incredients(
        text: 'macaroni and cheese mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/macaroni.png'),
    Incredients(
        text: 'malt drink mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg'),
    Incredients(
        text: 'mandarin orange sections',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mandarin-or-tangerines-or-clementines.jpg'),
    Incredients(
        text: 'mandarin oranges',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mandarin-or-tangerines-or-clementines.jpg'),
    Incredients(
        text: 'mango',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mango.jpg'),
    Incredients(
        text: 'maple syrup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/maple-syrup.png'),
    Incredients(
        text: 'maraschino cherries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/maraschino.jpg'),
    Incredients(
        text: 'margarine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg'),
    Incredients(
        text: 'marinara sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg'),
    Incredients(
        text: 'marjoram',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/marjoram.jpg'),
    Incredients(
        text: 'marsala wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Incredients(
        text: 'marshmallow fluff',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/normal-marshmallows.jpg'),
    Incredients(
        text: 'marshmallows',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/normal-marshmallows.jpg'),
    Incredients(
        text: 'masa harina',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/corn-flour.jpg'),
    Incredients(
        text: 'mascarpone',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-cream-fluffy.jpg'),
    Incredients(
        text: 'mat beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/moth-bean.png'),
    Incredients(
        text: 'matcha tea',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/matcha-powder.jpg'),
    Incredients(
        text: 'mayonnaise',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mayonnaise.png'),
    Incredients(
        text: 'meat',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'meat',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg'),
    Incredients(
        text: 'meatballs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/meatballs.png'),
    Incredients(
        text: 'medjool dates',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dates.jpg'),
    Incredients(
        text: 'mexican cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mexicorn.png'),
    Incredients(
        text: 'meyer lemon juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png'),
    Incredients(
        text: 'milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Incredients(
        text: 'milk chocolate chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg'),
    Incredients(
        text: 'mint chutney',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg'),
    Incredients(
        text: 'minute rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-white-rice.png'),
    Incredients(
        text: 'miracle whip',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mayonnaise.png'),
    Incredients(
        text: 'mirin',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mirin.jpg'),
    Incredients(
        text: 'miso',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/miso.jpg'),
    Incredients(
        text: 'molasses',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/molasses.jpg'),
    Incredients(
        text: 'monterey jack cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shredded-cheese-white.jpg'),
    Incredients(
        text: 'mushroom',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mushrooms.png'),
    Incredients(
        text: 'mussels',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mussels.jpg'),
    Incredients(
        text: 'mustard',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/regular-mustard.jpg'),
    Incredients(
        text: 'mustard seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/regular-mustard.jpg'),
    Incredients(
        text: 'napa cabbage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/napa-cabbage.jpg'),
    Incredients(
        text: 'navel oranges',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mandarin-or-tangerines-or-clementines.jpg'),
    Incredients(
        text: 'nectarine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/nectarines.jpg'),
    Incredients(
        text: 'new potatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/new-potatoes.jpg'),
    Incredients(
        text: 'non-fat greek yogurt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/filet-mignon.png'),
    Incredients(
        text: 'nonfat cool whip',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg'),
    Incredients(
        text: 'nonfat milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg'),
    Incredients(
        text: 'nori',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/nori.jpg'),
    Incredients(
        text: 'nut butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/nut-butter.png'),
    Incredients(
        text: 'nut meal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coconut-milk.png'),
    Incredients(
        text: 'nutella',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hazelnut-chocolate-spread.jpg'),
    Incredients(
        text: 'nutritional yeast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/nutritional-yeast.png'),
    Incredients(
        text: 'oat flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Incredients(
        text: 'oats',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg'),
    Incredients(
        text: 'oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Incredients(
        text: 'oil packed sun dried tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/canned-tuna.png'),
    Incredients(
        text: 'okra',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/okra.png'),
    Incredients(
        text: 'old bay seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Incredients(
        text: 'olive oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/olives-mixed.jpg'),
    Incredients(
        text: 'olives',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/olives-mixed.jpg'),
    Incredients(
        text: 'onion',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Incredients(
        text: 'onion powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Incredients(
        text: 'onion soup mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Incredients(
        text: 'orange',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Incredients(
        text: 'orange bell pepper',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Incredients(
        text: 'orange juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Incredients(
        text: 'orange juice concentrate',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Incredients(
        text: 'orange liqueur',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Incredients(
        text: 'orange marmalade',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Incredients(
        text: 'orange oil',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Incredients(
        text: 'orange zest',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png'),
    Incredients(
        text: 'oregano',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oregano.jpg'),
    Incredients(
        text: 'oreo cookies',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oreos.png'),
    Incredients(
        text: 'orzo',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orzo.jpg'),
    Incredients(
        text: 'oyster sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oysters.jpg'),
    Incredients(
        text: 'oysters',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oysters.jpg'),
    Incredients(
        text: 'palm sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Incredients(
        text: 'pancetta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pancetta.png'),
    Incredients(
        text: 'paneer',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/paneer.png'),
    Incredients(
        text: 'panko',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/panko.jpg'),
    Incredients(
        text: 'papaya',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/papaya.png'),
    Incredients(
        text: 'paprika',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bell-pepper-orange.png'),
    Incredients(
        text: 'parmigiano reggiano',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/parmesan.jpg'),
    Incredients(
        text: 'parsley',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parsley.jpg'),
    Incredients(
        text: 'parsley flakes',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parsley.jpg'),
    Incredients(
        text: 'parsnip',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parsnip.jpg'),
    Incredients(
        text: 'part-skim mozzarella cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ricotta.png'),
    Incredients(
        text: 'pasta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg'),
    Incredients(
        text: 'pasta salad mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg'),
    Incredients(
        text: 'pasta sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg'),
    Incredients(
        text: 'pastry flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pastrami.jpg'),
    Incredients(
        text: 'peach',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peach.png'),
    Incredients(
        text: 'peanut butter',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png'),
    Incredients(
        text: 'peanut butter chips',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png'),
    Incredients(
        text: 'peanut butter cups',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png'),
    Incredients(
        text: 'peanut oil',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png'),
    Incredients(
        text: 'peanuts',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png'),
    Incredients(
        text: 'pear liqueur',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pear-juice.jpg'),
    Incredients(
        text: 'pearl barley',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pearl-onions.png'),
    Incredients(
        text: 'pearl onions',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pearl-onions.png'),
    Incredients(
        text: 'peas',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peas.jpg'),
    Incredients(
        text: 'pecan',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pecans.jpg'),
    Incredients(
        text: 'pecan pieces',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pecans.jpg'),
    Incredients(
        text: 'pecorino',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/parmesan.jpg'),
    Incredients(
        text: 'penne',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/penne-pasta.jpg'),
    Incredients(
        text: 'peperoncino',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pepperoncini.jpg'),
    Incredients(
        text: 'pepper jack cheese',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Incredients(
        text: 'peppercorns',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Incredients(
        text: 'peppermint baking chips',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Incredients(
        text: 'peppermint extract',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Incredients(
        text: 'pepperoni',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Incredients(
        text: 'peppers',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg'),
    Incredients(
        text: 'pesto',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/basil-pesto.png'),
    Incredients(
        text: 'pickle relish',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dill-pickles.jpg'),
    Incredients(
        text: 'pickles',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dill-pickles.jpg'),
    Incredients(
        text: 'pico de gallo',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pico-de-gallo.png'),
    Incredients(
        text: 'pie crust',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pie-crust.jpg'),
    Incredients(
        text: 'pimento stuffed olives',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pimento.png'),
    Incredients(
        text: 'pimientos',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pimento.png'),
    Incredients(
        text: 'pine nuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pine-nuts.png'),
    Incredients(
        text: 'pineapple',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg'),
    Incredients(
        text: 'pineapple chunks',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg'),
    Incredients(
        text: 'pineapple in juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg'),
    Incredients(
        text: 'pineapple juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg'),
    Incredients(
        text: 'pink himalayan salt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg'),
    Incredients(
        text: 'pinto beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pinto-beans.jpg'),
    Incredients(
        text: 'pistachios',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pistachios.jpg'),
    Incredients(
        text: 'pita',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pita-bread.jpg'),
    Incredients(
        text: 'pizza crust',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Incredients(
        text: 'pizza mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Incredients(
        text: 'plain greek yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Incredients(
        text: 'plain nonfat yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Incredients(
        text: 'plain yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Incredients(
        text: 'plantain',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/plantains.jpg'),
    Incredients(
        text: 'plum',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/plum.jpg'),
    Incredients(
        text: 'plum tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/plum-sauce.png'),
    Incredients(
        text: 'poblano peppers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/poblano-peppers.jpg'),
    Incredients(
        text: 'polenta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cornmeal.png'),
    Incredients(
        text: 'polish sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/smoked-sausage.png'),
    Incredients(
        text: 'pomegranate juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pomegranate.jpg'),
    Incredients(
        text: 'pomegranate molasses',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pomegranate.jpg'),
    Incredients(
        text: 'pomegranate seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pomegranate.jpg'),
    Incredients(
        text: 'popcorn',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/popcorn-kernels.jpg'),
    Incredients(
        text: 'poppy seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/poppyseed.png'),
    Incredients(
        text: 'pork',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-tenderloin-raw.png'),
    Incredients(
        text: 'Pork & Beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-tenderloin-raw.png'),
    Incredients(
        text: 'pork belly',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Incredients(
        text: 'pork butt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Incredients(
        text: 'pork chops',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Incredients(
        text: 'pork links',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Incredients(
        text: 'pork loin chops',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Incredients(
        text: 'pork loin roast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Incredients(
        text: 'pork roast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Incredients(
        text: 'pork shoulder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Incredients(
        text: 'pork tenderloin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg'),
    Incredients(
        text: 'port',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/guinness.png'),
    Incredients(
        text: 'portabella mushrooms',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/portabello-mushrooms.jpg'),
    Incredients(
        text: 'pot roast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pot-roast.jpg'),
    Incredients(
        text: 'potato chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png'),
    Incredients(
        text: 'potato starch',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png'),
    Incredients(
        text: 'potatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png'),
    Incredients(
        text: 'poultry seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.jpg'),
    Incredients(
        text: 'powdered sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg'),
    Incredients(
        text: 'pretzel sandwiches',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pretzels.jpg'),
    Incredients(
        text: 'processed american cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/american-cheese.jpg'),
    Incredients(
        text: 'prosciutto',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/proscuitto.jpg'),
    Incredients(
        text: 'provolone cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/provolone-slices.jpg'),
    Incredients(
        text: 'prunes',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/prunes.jpg'),
    Incredients(
        text: 'puff pastry',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/puff-pastry.png'),
    Incredients(
        text: 'pumpkin',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png'),
    Incredients(
        text: 'pumpkin pie filling',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png'),
    Incredients(
        text: 'pumpkin pie spice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png'),
    Incredients(
        text: 'pumpkin puree',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png'),
    Incredients(
        text: 'pumpkin seeds',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png'),
    Incredients(
        text: 'queso fresco',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheez-whiz.jpg'),
    Incredients(
        text: 'quick cooking oats',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg'),
    Incredients(
        text: 'quinoa',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-quinoa.png'),
    Incredients(
        text: 'quinoa flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-quinoa.png'),
    Incredients(
        text: 'radicchio',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/radicchio.jpg'),
    Incredients(
        text: 'radishes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/radishes.jpg'),
    Incredients(
        text: 'raisins',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/raisins.jpg'),
    Incredients(
        text: 'ramen noodles',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ramen.jpg'),
    Incredients(
        text: 'ranch dressing',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ranch-dressing.jpg'),
    Incredients(
        text: 'ranch dressing mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ranch-dressing.jpg'),
    Incredients(
        text: 'raspberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raspberries.jpg'),
    Incredients(
        text: 'raspberry jam',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raspberries.jpg'),
    Incredients(
        text: 'raw cashews',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cashews.jpg'),
    Incredients(
        text: 'raw shrimp',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-brown-sugar.png'),
    Incredients(
        text: 'ready-to-serve Asian fried rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/pie-crust.jpg'),
    Incredients(
        text: 'real bacon recipe pieces',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/bacon-bits.jpg'),
    Incredients(
        text: 'red apples',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-delicious-apples.png'),
    Incredients(
        text: 'red bell peppers',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beets.jpg'),
    Incredients(
        text: 'red cabbage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Incredients(
        text: 'red chilli',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Incredients(
        text: 'red delicious apples',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-delicious-apples.png'),
    Incredients(
        text: 'red food coloring',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/food-coloring.png'),
    Incredients(
        text: 'red grapefruit juice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg'),
    Incredients(
        text: 'red grapes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg'),
    Incredients(
        text: 'red kidney beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/kidney-beans.jpg'),
    Incredients(
        text: 'red lentils',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-lentils.png'),
    Incredients(
        text: 'red onion',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-onion.png'),
    Incredients(
        text: 'red pepper flakes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-plum.png'),
    Incredients(
        text: 'red pepper powder',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-plum.png'),
    Incredients(
        text: 'red potatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-plum.png'),
    Incredients(
        text: 'red velvet cookie',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine-vinegar.jpg'),
    Incredients(
        text: 'red wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Incredients(
        text: 'red wine vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Incredients(
        text: 'reduced fat shredded cheddar cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mayonnaise.png'),
    Incredients(
        text: 'refried beans',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png'),
    Incredients(
        text: 'refrigerated crescent rolls',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png'),
    Incredients(
        text: 'refrigerated pizza dough',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png'),
    Incredients(
        text: 'refrigerated sugar cookie dough',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png'),
    Incredients(
        text: 'rhubarb',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/rhubarb.jpg'),
    Incredients(
        text: 'rib tips',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/no.jpg'),
    Incredients(
        text: 'rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/uncooked-white-rice.png'),
    Incredients(
        text: 'rice flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Incredients(
        text: 'rice krispies cereal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Incredients(
        text: 'rice milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Incredients(
        text: 'rice noodles',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Incredients(
        text: 'rice paper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Incredients(
        text: 'rice syrup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Incredients(
        text: 'rice vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Incredients(
        text: 'rice wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Incredients(
        text: 'ricotta salata',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ricotta.png'),
    Incredients(
        text: 'ritz crackers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/crackers.jpg'),
    Incredients(
        text: 'roast beef',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg'),
    Incredients(
        text: 'roasted chicken',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg'),
    Incredients(
        text: 'roasted nuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg'),
    Incredients(
        text: 'roasted peanuts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg'),
    Incredients(
        text: 'roasted red peppers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg'),
    Incredients(
        text: 'roma tomatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/roma-tomatoes.png'),
    Incredients(
        text: 'romaine lettuce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/romaine.jpg'),
    Incredients(
        text: 'root vegetables',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg'),
    Incredients(
        text: 'rosemary',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rosemary.jpg'),
    Incredients(
        text: 'rotisserie chicken',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rotisserie-chicken.png'),
    Incredients(
        text: 'round steak',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/round-steak.jpg'),
    Incredients(
        text: 'rub',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Incredients(
        text: 'rum extract',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vanilla-extract.jpg'),
    Incredients(
        text: 'runny honey',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png'),
    Incredients(
        text: 'russet potatoes',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/russet-or-idaho-potatoes.png'),
    Incredients(
        text: 'rutabaga',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/rutabaga.jpg'),
    Incredients(
        text: 'rye bread',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beer.jpg'),
    Incredients(
        text: 'rye meal',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg'),
    Incredients(
        text: 'saffron threads',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/saffron.jpg'),
    Incredients(
        text: 'sage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-sage.png'),
    Incredients(
        text: 'sage leaves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/fresh-sage.png'),
    Incredients(
        text: 'salad dressing',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg'),
    Incredients(
        text: 'salami',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salami.jpg'),
    Incredients(
        text: 'salmon fillet',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salmon.png'),
    Incredients(
        text: 'salsa',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salsa.png'),
    Incredients(
        text: 'salsa verde',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salsa.png'),
    Incredients(
        text: 'salt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salt.jpg'),
    Incredients(
        text: 'salt and pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cod-fillet.jpg'),
    Incredients(
        text: 'salted butter',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/butter.jpg'),
    Incredients(
        text: 'saltine crackers',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/saltine-crackers.jpg'),
    Incredients(
        text: 'sandwich bun',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/kaiser-roll.png'),
    Incredients(
        text: 'sauerkraut',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sour-cream.jpg'),
    Incredients(
        text: 'sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-pork-sausage.png'),
    Incredients(
        text: 'sausage links',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-pork-sausage.png'),
    Incredients(
        text: 'scotch bonnet chili',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whiskey-bottle.jpg'),
    Incredients(
        text: 'sea salt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Incredients(
        text: 'sea scallops',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Incredients(
        text: 'seasoned bread crumbs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Incredients(
        text: 'seasoned rice vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Incredients(
        text: 'seasoned salt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Incredients(
        text: 'seasoning',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Incredients(
        text: 'seasoning blend',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png'),
    Incredients(
        text: 'seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sunflower-seeds.jpg'),
    Incredients(
        text: 'self-rising flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Incredients(
        text: 'semi sweet chocolate chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chocolate-chips.jpg'),
    Incredients(
        text: 'serrano chile',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/proscuitto.jpg'),
    Incredients(
        text: 'sesame oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sesame-seeds.png'),
    Incredients(
        text: 'sesame seed hamburger buns',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sesame-seeds.png'),
    Incredients(
        text: 'sesame seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sesame-seeds.png'),
    Incredients(
        text: 'shallot',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shallots.jpg'),
    Incredients(
        text: 'sharp cheddar cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'sheeps milk cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'shells',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shell-pasta.jpg'),
    Incredients(
        text: 'sherry',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dry-sherry.png'),
    Incredients(
        text: 'sherry',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dry-sherry.png'),
    Incredients(
        text: 'sherry vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dry-sherry.png'),
    Incredients(
        text: 'shiitake mushroom caps',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shiitake-mushrooms.png'),
    Incredients(
        text: 'short grain rice',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Incredients(
        text: 'short pasta',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Incredients(
        text: 'short ribs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Incredients(
        text: 'shortbread cookies',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Incredients(
        text: 'shortcrust pastry',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Incredients(
        text: 'shortening',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg'),
    Incredients(
        text: 'shredded cheddar cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'shredded cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'shredded chicken',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'shredded coconut',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'shredded mexican cheese blend',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'shredded mexican cheese blend',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'shredded mozzarella',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'silken tofu',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tofu.png'),
    Incredients(
        text: 'sirloin steak',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sirloin-steak.png'),
    Incredients(
        text: 'skim milk ricotta',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg'),
    Incredients(
        text: 'skim vanilla greek yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg'),
    Incredients(
        text: 'skin-on bone-in chicken leg quarters',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chicken-drumsticks.jpg'),
    Incredients(
        text: 'skinless boneless chicken breast halves',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chicken-thighs.png'),
    Incredients(
        text: 'skinless boneless chicken thighs',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chicken-thighs.png'),
    Incredients(
        text: 'skinned black gram',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/urad-dal.png'),
    Incredients(
        text: 'slaw dressing',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coleslaw.png'),
    Incredients(
        text: 'slaw mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/coleslaw.png'),
    Incredients(
        text: 'slivered almonds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/almonds-slivered.png'),
    Incredients(
        text: 'smoked paprika',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg'),
    Incredients(
        text: 'smoked salmon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg'),
    Incredients(
        text: 'smoked sausage',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg'),
    Incredients(
        text: 'smooth peanut butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/peanut-butter.png'),
    Incredients(
        text: 'snapper fillets',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/snapper.jpg'),
    Incredients(
        text: 'snow peas',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/snow-peas.jpg'),
    Incredients(
        text: 'soda water',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sparkling-water.png'),
    Incredients(
        text: 'sour cream',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png'),
    Incredients(
        text: 'sourdough bowl',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sourdough-bread.jpg'),
    Incredients(
        text: 'sourdough bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sourdough-bread.jpg'),
    Incredients(
        text: 'soy milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soy-milk.jpg'),
    Incredients(
        text: 'soy protein powder',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/okara.png'),
    Incredients(
        text: 'soy sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg'),
    Incredients(
        text: 'spaghetti',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/spaghetti.jpg'),
    Incredients(
        text: 'spaghetti squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/spaghetti.jpg'),
    Incredients(
        text: 'sparkling wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/champagne.png'),
    Incredients(
        text: 'spelt flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/farro-or-spelt.jpg'),
    Incredients(
        text: 'spicy brown mustard',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg'),
    Incredients(
        text: 'spinach',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/spinach.jpg'),
    Incredients(
        text: 'sprite',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg'),
    Incredients(
        text: 'sprouts',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/alfalfa-sprouts.png'),
    Incredients(
        text: 'squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/butternut-squash.jpg'),
    Incredients(
        text: 'sriracha sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/hot-sauce-or-tabasco.png'),
    Incredients(
        text: 'steaks',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/ribeye-raw.jpg'),
    Incredients(
        text: 'steel cut oats',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/steel-cut-oats.png'),
    Incredients(
        text: 'stevia',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/stevia.png'),
    Incredients(
        text: 'stew meat',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/beef-cubes-raw.png'),
    Incredients(
        text: 'stew vegetables',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/beef-cubes-raw.png'),
    Incredients(
        text: 'stock',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/chicken-broth.png'),
    Incredients(
        text: 'store-bought phyllo',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/filo-dough.png'),
    Incredients(
        text: 'stout',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/guinness.png'),
    Incredients(
        text: 'strawberries',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/strawberries.png'),
    Incredients(
        text: 'strawberry jam',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/strawberries.png'),
    Incredients(
        text: 'strawberry jello',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/strawberries.png'),
    Incredients(
        text: 'stuffing',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stuffing-mix.png'),
    Incredients(
        text: 'stuffing mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/stuffing-mix.png'),
    Incredients(
        text: 'sub rolls',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/french-rolls.jpg'),
    Incredients(
        text: 'sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png'),
    Incredients(
        text: 'sugar snap peas',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png'),
    Incredients(
        text: 'sugar syrup',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png'),
    Incredients(
        text: 'sukrin sweetener',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sugar-substitute.jpg'),
    Incredients(
        text: 'summer savory',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yellow-squash.jpg'),
    Incredients(
        text: 'summer squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yellow-squash.jpg'),
    Incredients(
        text: 'sunflower oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Incredients(
        text: 'sunflower seeds',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg'),
    Incredients(
        text: 'sweet chilli sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'sweet onion',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'sweet paprika',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'sweet pickle juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'sweet pickle relish',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'sweet potato',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'sweet tea',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'sweetened coconut',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'sweetened condensed milk',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'sweetened shredded coconut',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png'),
    Incredients(
        text: 'swiss chard',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/swiss-chard.jpg'),
    Incredients(
        text: 'swiss cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/swiss-chard.jpg'),
    Incredients(
        text: 'taco seasoning mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/taco-shells.jpg'),
    Incredients(
        text: 'taco shells',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/taco-shells.jpg'),
    Incredients(
        text: 'tahini',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tahini-paste.png'),
    Incredients(
        text: 'tamari',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tamarind.png'),
    Incredients(
        text: 'tapioca flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/sago-pearls.png'),
    Incredients(
        text: 'tarragon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tarragon.jpg'),
    Incredients(
        text: 'tart apple',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/grannysmith-apple.png'),
    Incredients(
        text: 'tea bags',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg'),
    Incredients(
        text: 'tequila',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tequila.png'),
    Incredients(
        text: 'teriyaki sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Incredients(
        text: 'thai basil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/lemon-basil.jpg'),
    Incredients(
        text: 'thai chiles',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/lemon-basil.jpg'),
    Incredients(
        text: 'thai red curry paste',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/lemon-basil.jpg'),
    Incredients(
        text: 'thick-cut bacon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-bacon.png'),
    Incredients(
        text: 'tilapia fillets',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-tilapia.jpg'),
    Incredients(
        text: 'toast',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/toast.jpg'),
    Incredients(
        text: 'toffee bits',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/toffee-pieces.jpg'),
    Incredients(
        text: 'tofu',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/beancurd-sheets.jpg'),
    Incredients(
        text: 'tomatillos',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Incredients(
        text: 'tomato juice',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Incredients(
        text: 'tomato paste',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Incredients(
        text: 'tomato puree',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Incredients(
        text: 'tomato sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Incredients(
        text: 'tomato soup',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Incredients(
        text: 'tomatoes',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png'),
    Incredients(
        text: 'top blade steak',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/blade-steak.png'),
    Incredients(
        text: 'top round steak',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/round-steak.jpg'),
    Incredients(
        text: 'Top Sirloin',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/top-sirloin-steak.jpg'),
    Incredients(
        text: 'tortilla',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/flour-tortilla.jpg'),
    Incredients(
        text: 'tortilla chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/flour-tortilla.jpg'),
    Incredients(
        text: 'triple sec',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg'),
    Incredients(
        text: 'truffle oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/truffle-oil.jpg'),
    Incredients(
        text: 'tuna',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/canned-tuna.png'),
    Incredients(
        text: 'turbinado sugar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/raw-brown-sugar.png'),
    Incredients(
        text: 'turkey',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/turkey-raw-whole.jpg'),
    Incredients(
        text: 'turkey breast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/turkey-raw-whole.jpg'),
    Incredients(
        text: 'turkey kielbasa',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/turkey-raw-whole.jpg'),
    Incredients(
        text: 'turmeric',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/turmeric.jpg'),
    Incredients(
        text: 'turnips',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/turnips.png'),
    Incredients(
        text: 'unbleached flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png'),
    Incredients(
        text: 'unsalted butter',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg'),
    Incredients(
        text: 'unsmoked back bacon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/canadian-bacon.png'),
    Incredients(
        text: 'unsweetened applesauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Incredients(
        text: 'unsweetened coconut milk',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Incredients(
        text: 'unsweetened shredded coconut',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png'),
    Incredients(
        text: 'vanilla bean',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Incredients(
        text: 'vanilla bean paste',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Incredients(
        text: 'vanilla essence',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Incredients(
        text: 'vanilla extract',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Incredients(
        text: 'vanilla frosting',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Incredients(
        text: 'vanilla instant pudding mix',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Incredients(
        text: 'vanilla protein powder',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Incredients(
        text: 'vanilla wafers',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Incredients(
        text: 'vanilla yogurt',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg'),
    Incredients(
        text: 'vegan cheese',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'vegan chocolate chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'vegan margarine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png'),
    Incredients(
        text: 'vegetable broth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-vegetables.png'),
    Incredients(
        text: 'vegetable oil',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-vegetables.png'),
    Incredients(
        text: 'vegetarian bacon',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/mixed-vegetables.png'),
    Incredients(
        text: 'vermouth',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vermouth.jpg'),
    Incredients(
        text: 'vinaigrette',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinaigrette.jpg'),
    Incredients(
        text: 'vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg'),
    Incredients(
        text: 'vodka',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vodka.jpg'),
    Incredients(
        text: 'walnuts',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/walnuts.jpg'),
    Incredients(
        text: 'water',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png'),
    Incredients(
        text: 'water chestnuts',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png'),
    Incredients(
        text: 'water-packed tuna',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png'),
    Incredients(
        text: 'watercress',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png'),
    Incredients(
        text: 'watermelon chunks',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png'),
    Incredients(
        text: 'wheat bran',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/wheat-germ.png'),
    Incredients(
        text: 'wheat germ',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/wheat-germ.png'),
    Incredients(
        text: 'whipped cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whipped-cream.jpg'),
    Incredients(
        text: 'whipped topping',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whipped-cream.jpg'),
    Incredients(
        text: 'whipping cream',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whipped-cream.jpg'),
    Incredients(
        text: 'whiskey',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/whiskey-bottle.jpg'),
    Incredients(
        text: 'white balsamic vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Incredients(
        text: 'white bread',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Incredients(
        text: 'white cake mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Incredients(
        text: 'white cheddar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Incredients(
        text: 'white chocolate',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Incredients(
        text: 'white chocolate chips',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Incredients(
        text: 'white onion',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Incredients(
        text: 'white pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Incredients(
        text: 'white whole wheat flour',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Incredients(
        text: 'white wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Incredients(
        text: 'white wine vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg'),
    Incredients(
        text: 'whole allspice berries',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Incredients(
        text: 'whole chicken',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Incredients(
        text: 'whole coriander seeds',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Incredients(
        text: 'whole cranberry sauce',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Incredients(
        text: 'whole kernel corn',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Incredients(
        text: 'whole star anise',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Incredients(
        text: 'whole wheat bread',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Incredients(
        text: 'whole wheat flour',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Incredients(
        text: 'whole wheat tortillas',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Incredients(
        text: 'whole-grain mustard',
        imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png'),
    Incredients(
        text: 'wine',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg'),
    Incredients(
        text: 'wine vinegar',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/red-wine-vinegar.jpg'),
    Incredients(
        text: 'winter squash',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/butternut-squash.jpg'),
    Incredients(
        text: 'won ton wraps',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/wonton-wrappers.jpg'),
    Incredients(
        text: 'worcestershire sauce',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg'),
    Incredients(
        text: 'wraps',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/flour-tortilla.jpg'),
    Incredients(
        text: 'xanthan gum',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/white-powder.jpg'),
    Incredients(
        text: 'yeast',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg'),
    Incredients(
        text: 'yellow bell pepper',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Incredients(
        text: 'yellow cake mix',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Incredients(
        text: 'yellow onion',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png'),
    Incredients(
        text: 'yogurt',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/plain-yogurt.jpg'),
    Incredients(
        text: 'yukon gold potato',
        imageUrl:
            'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png'),
  ];
  UnmodifiableListView get incredients {
    return UnmodifiableListView(_incredients);
  }

  void checkBoxToggler(Incredients incredients) {
    incredients.toggleCheckBox();
  }
}

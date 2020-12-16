import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'Ingredient.dart';

class IngredientsHandler extends ChangeNotifier {
  List<Ingredients> _ingredients = [
    Ingredients(
      text: 'acorn squash',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/acorn-squash.jpg',
      hindiText: 'बलूत के फल का शरबत',
    ),
    Ingredients(
      text: 'adobo sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/harissa.jpg',
      hindiText: 'Adobo सॉस',
    ),
    Ingredients(
      text: 'agave nectar',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/agave.png',
      hindiText: 'रामबांस रस',
    ),
    Ingredients(
      text: 'ahi tuna',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tuna-steak.png',
      hindiText: 'ऐही तूना',
    ),
    Ingredients(
      text: 'alfredo pasta sauce',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/alfredo-sauce.png',
      hindiText: 'अल्फ्रेडो पास्ता सॉस',
    ),
    Ingredients(
      text: 'almond extract',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg',
      hindiText: 'बादाम निकालने',
    ),
    Ingredients(
      text: 'almond flour',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg',
      hindiText: 'बादाम का आटा',
    ),
    Ingredients(
      text: 'almond milk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg',
      hindiText: 'बादाम का दूध',
    ),
    Ingredients(
      text: 'almonds',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/almonds.jpg',
      hindiText: 'बादाम',
    ),
    Ingredients(
      text: 'amaretto',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/temporary-orange-liqueur.jpg',
      hindiText: 'Amaretto',
    ),
    Ingredients(
      text: 'ancho chiles',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/anchovies.jpg',
      hindiText: 'आँचल बवासीर',
    ),
    Ingredients(
      text: 'anchovies',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/anchovies.jpg',
      hindiText: 'anchovies',
    ),
    Ingredients(
      text: 'andouille sausage',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/smoked-sausage.jpg',
      hindiText: 'और सॉइल सॉसेज',
    ),
    Ingredients(
      text: 'angel food cake mix',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/angelhair.jpg',
      hindiText: 'परी फूड केक मिक्स',
    ),
    Ingredients(
      text: 'angel hair pasta',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/angelhair.jpg',
      hindiText: 'परी बाल पास्ता',
    ),
    Ingredients(
      text: 'angostura bitters',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg',
      hindiText: 'अंगोस्तरा बिटर',
    ),
    Ingredients(
      text: 'apple',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg',
      hindiText: 'सेब',
    ),
    Ingredients(
      text: 'apple butter spread',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg',
      hindiText: 'सेब का मक्खन फैल',
    ),
    Ingredients(
      text: 'apple cider',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg',
      hindiText: 'सेब की मदिरा',
    ),
    Ingredients(
      text: 'apple juice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg',
      hindiText: 'सेब का रस',
    ),
    Ingredients(
      text: 'apple pie spice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg',
      hindiText: 'सेब पाई मसाला',
    ),
    Ingredients(
      text: 'apricot preserves',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apricot.jpg',
      hindiText: 'खूबानी बचाती है',
    ),
    Ingredients(
      text: 'apricots',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apricot.jpg',
      hindiText: 'खुबानी',
    ),
    Ingredients(
      text: 'arborio rice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/arborio-rice.png',
      hindiText: 'अरबोरिया चावल',
    ),
    Ingredients(
      text: 'arrowroot powder',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/white-powder.jpg',
      hindiText: 'अरारोट पाउडर',
    ),
    Ingredients(
      text: 'artichoke heart quarters',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/artichokes.png',
      hindiText: 'आटिचोक हार्ट क्वार्टर',
    ),
    Ingredients(
      text: 'artichokes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/artichokes.png',
      hindiText: 'आटिचोक',
    ),
    Ingredients(
      text: 'arugula',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/arugula-or-rocket-salad.jpg',
      hindiText: 'आर्गुला',
    ),
    Ingredients(
      text: 'asafoetida',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/curry-powder.jpg',
      hindiText: 'हींग',
    ),
    Ingredients(
      text: 'asafoetida powder',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/curry-powder.jpg',
      hindiText: 'हींग पाउडर',
    ),
    Ingredients(
      text: 'asiago cheese',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parmesan.jpg',
      hindiText: 'एसियागो चीज़',
    ),
    Ingredients(
      text: 'asian pear',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/asian-medley.png',
      hindiText: 'एशियाई नाशपाती',
    ),
    Ingredients(
      text: 'asparagus spears',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/asparagus.png',
      hindiText: 'शतावरी भाले',
    ),
    Ingredients(
      text: 'avocado',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/avocado.jpg',
      hindiText: 'एवोकाडो',
    ),
    Ingredients(
      text: 'avocado oil',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/avocado.jpg',
      hindiText: 'रुचिरा तेल',
    ),
    Ingredients(
      text: 'baby bell peppers',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg',
      hindiText: 'बेबी बेल पेपर',
    ),
    Ingredients(
      text: 'baby bok choy',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg',
      hindiText: 'बेबी बोक चॉए',
    ),
    Ingredients(
      text: 'baby carrots',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg',
      hindiText: 'छाेटे गाजर',
    ),
    Ingredients(
      text: 'baby corn',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg',
      hindiText: 'बेबी कॉर्न',
    ),
    Ingredients(
      text: 'baby spinach leaves',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/baby-corn.jpg',
      hindiText: 'बेबी पालक के पत्ते',
    ),
    Ingredients(
      text: 'baby-back ribs',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/baby-back-ribs.jpg',
      hindiText: 'पसली का मांस',
    ),
    Ingredients(
      text: 'baby-back ribs',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/baby-back-ribs.jpg',
      hindiText: 'पसली का मांस',
    ),
    Ingredients(
      text: 'bacon',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/raw-bacon.png',
      hindiText: 'सूअर का मांस',
    ),
    Ingredients(
      text: 'bacon fat',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/raw-bacon.png',
      hindiText: 'बेकन फैट',
    ),
    Ingredients(
      text: 'baguette',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/half-baguette.jpg',
      hindiText: 'Baguette',
    ),
    Ingredients(
      text: 'baking bar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg',
      hindiText: 'बेकिंग बार',
    ),
    Ingredients(
      text: 'baking powder',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg',
      hindiText: 'बेकिंग पाउडर',
    ),
    Ingredients(
      text: 'baking soda',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg',
      hindiText: 'बेकिंग सोडा',
    ),
    Ingredients(
      text: 'balsamic glaze',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg',
      hindiText: 'बालसमिक शीशा',
    ),
    Ingredients(
      text: 'balsamic vinegar',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg',
      hindiText: 'चिकना सिरका',
    ),
    Ingredients(
      text: 'bamboo shoots',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/bamboo-shoots.jpg',
      hindiText: 'बांस की शाखा',
    ),
    Ingredients(
      text: 'banana',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/bananas.jpg',
      hindiText: 'केला',
    ),
    Ingredients(
      text: 'basmati rice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/rice-white-long-grain-or-basmatii-cooked.jpg',
      hindiText: 'बासमती चावल',
    ),
    Ingredients(
      text: 'bay leaves',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/bay-leaves.jpg',
      hindiText: 'तेज पत्ता',
    ),
    Ingredients(
      text: 'bbq sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png',
      hindiText: 'बार्बेक्यू सॉस',
    ),
    Ingredients(
      text: 'beans',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/bean-sprouts.jpg',
      hindiText: 'फलियां',
    ),
    Ingredients(
      text: 'beef',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/beef-cubes-raw.png',
      hindiText: 'गाय का मांस',
    ),
    Ingredients(
      text: 'beef brisket',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg',
      hindiText: 'गोमांस पशु की छाती',
    ),
    Ingredients(
      text: 'beef broth',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg',
      hindiText: 'गोमांस शोरबा',
    ),
    Ingredients(
      text: 'beef chuck roast',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg',
      hindiText: 'बीफ चक रोस्ट',
    ),
    Ingredients(
      text: 'beef stock',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg',
      hindiText: 'गोमांस भंडार',
    ),
    Ingredients(
      text: 'beef tenderloin',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/stock-cube.jpg',
      hindiText: 'मांस काट',
    ),
    Ingredients(
      text: 'beer',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beer.jpg',
      hindiText: 'बीयर',
    ),
    Ingredients(
      text: 'beer',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beer.jpg',
      hindiText: 'बीयर',
    ),
    Ingredients(
      text: 'beets',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beets.jpg',
      hindiText: 'बीट',
    ),
    Ingredients(
      text: 'bell pepper',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/bell-pepper-orange.png',
      hindiText: 'शिमला मिर्च',
    ),
    Ingredients(
      text: 'berries',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/berries-mixed.jpg',
      hindiText: 'जामुन',
    ),
    Ingredients(
      text: 'biscuit mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/buttermilk-biscuits.jpg',
      hindiText: 'बिस्किट मिक्स',
    ),
    Ingredients(
      text: 'biscuits',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/buttermilk-biscuits.jpg',
      hindiText: 'बिस्कुट',
    ),
    Ingredients(
      text: 'bittersweet chocolate',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg',
      hindiText: 'कड़वा - मीठा चॉकलेट',
    ),
    Ingredients(
      text: 'black bean sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg',
      hindiText: 'ब्लैक बीन सॉस',
    ),
    Ingredients(
      text: 'black beans',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg',
      hindiText: 'काले सेम',
    ),
    Ingredients(
      text: 'black olives',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg',
      hindiText: 'काले जैतून',
    ),
    Ingredients(
      text: 'black pepper',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg',
      hindiText: 'काली मिर्च',
    ),
    Ingredients(
      text: 'black sesame seeds',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg',
      hindiText: 'काले तिल के बीज',
    ),
    Ingredients(
      text: 'blackberries',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg',
      hindiText: 'कले शतूत',
    ),
    Ingredients(
      text: 'blanched almonds',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/blanched-almonds.png',
      hindiText: 'ह्ल्के उबले हुए बादाम',
    ),
    Ingredients(
      text: 'blood orange',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/blood-orange.jpg',
      hindiText: 'खून जैसा नारंगी',
    ),
    Ingredients(
      text: 'blue cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/blue-cheese.png',
      hindiText: 'फफूंदी लगा पनीर',
    ),
    Ingredients(
      text: 'blueberries',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/blueberries.jpg',
      hindiText: 'ब्लू बैरीज़',
    ),
    Ingredients(
      text: 'bok choy',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/bok-choy.jpg',
      hindiText: 'बोक चोय',
    ),
    Ingredients(
      text: 'boneless skinless chicken breast',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pork-loin.jpg',
      hindiText: 'बोनलेस स्किनलेस चिकन ब्रेस्ट',
    ),
    Ingredients(
      text: 'bourbon',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vanilla-extract.jpg',
      hindiText: 'बोरबॉन',
    ),
    Ingredients(
      text: 'brandy',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/brandy.png',
      hindiText: 'ब्रांडी',
    ),
    Ingredients(
      text: 'bread',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/white-bread.jpg',
      hindiText: 'रोटी',
    ),
    Ingredients(
      text: 'bread flour',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/white-bread.jpg',
      hindiText: 'आटे की रोटी',
    ),
    Ingredients(
      text: 'breakfast links',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/breakfast-sausage-links.jpg',
      hindiText: 'नाश्ता लिंक',
    ),
    Ingredients(
      text: 'brie',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/brie.jpg',
      hindiText: 'ब्री',
    ),
    Ingredients(
      text: 'broccoli',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/broccoli.jpg',
      hindiText: 'ब्रोकोली',
    ),
    Ingredients(
      text: 'broccoli florets',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/broccoli.jpg',
      hindiText: 'ब्रोकोली फ्लोरेट्स',
    ),
    Ingredients(
      text: 'brown rice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png',
      hindiText: 'भूरा चावल',
    ),
    Ingredients(
      text: 'brown rice flour',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png',
      hindiText: 'ब्राउन राइस आटा',
    ),
    Ingredients(
      text: 'brown sugar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png',
      hindiText: 'भूरि शक्कर',
    ),
    Ingredients(
      text: 'brownie mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/uncooked-brown-rice.png',
      hindiText: 'ब्राउनी मिक्स',
    ),
    Ingredients(
      text: 'brussel sprouts',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brussels-sprouts.jpg',
      hindiText: 'ब्रूसेल स्प्राऊट्स',
    ),
    Ingredients(
      text: 'bulgur',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/bulgur-wheat.jpg',
      hindiText: 'Bulgur',
    ),
    Ingredients(
      text: 'butter',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg',
      hindiText: 'मक्खन',
    ),
    Ingredients(
      text: 'butterhead lettuce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg',
      hindiText: 'बटरहेड लेट्यूस',
    ),
    Ingredients(
      text: 'buttermilk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg',
      hindiText: 'छाछ',
    ),
    Ingredients(
      text: 'butternut squash',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg',
      hindiText: 'बटरनट स्क्वाश',
    ),
    Ingredients(
      text: 'butterscotch chips',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/buttermilk.jpg',
      hindiText: 'बटरस्कॉच चिप्स',
    ),
    Ingredients(
      text: 'cabbage',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cabbage.jpg',
      hindiText: 'पत्ता गोभी',
    ),
    Ingredients(
      text: 'caesar dressing',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/coleslaw-or-caesar-dressing.jpg',
      hindiText: 'सीज़र सलाद की सजावट',
    ),
    Ingredients(
      text: 'cajun seasoning',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/chili-powder.jpg',
      hindiText: 'कैजुन मसाला',
    ),
    Ingredients(
      text: 'cake flour',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png',
      hindiText: 'केक का आटा',
    ),
    Ingredients(
      text: 'candy canes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/candy-corn.jpg',
      hindiText: 'कैंडी केन्स',
    ),
    Ingredients(
      text: 'candy coating',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/candy-corn.jpg',
      hindiText: 'कैंडी कोटिंग',
    ),
    Ingredients(
      text: 'candy melts',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/candy-corn.jpg',
      hindiText: 'कैंडी पिघलती है',
    ),
    Ingredients(
      text: 'canned black beans',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'कैन्ड ब्लैक बीन्स',
    ),
    Ingredients(
      text: 'canned diced tomatoes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'डिब्बाबंद टमाटर',
    ),
    Ingredients(
      text: 'canned garbanzo beans',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'डिब्बाबंद गार्बनो बीन्स',
    ),
    Ingredients(
      text: 'canned green chiles',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'डिब्बाबंद हरी मिर्च',
    ),
    Ingredients(
      text: 'canned kidney beans',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'डिब्बाबंद किडनी बीन्स',
    ),
    Ingredients(
      text: 'canned mushrooms',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'डिब्बाबंद मशरूम',
    ),
    Ingredients(
      text: 'canned pinto beans',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'डिब्बाबंद पिंटो बीन्स',
    ),
    Ingredients(
      text: 'canned red kidney beans',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'कैन्ड रेड किडनी बीन्स',
    ),
    Ingredients(
      text: 'canned tomatoes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'डिब्बा बंद टमाटर',
    ),
    Ingredients(
      text: 'canned tuna',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'डिब्बाबंद ट्यूना',
    ),
    Ingredients(
      text: 'canned white beans',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'कैन्ड व्हाइट बीन्स',
    ),
    Ingredients(
      text: 'canned white cannellini beans',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'कैन्ड वाइट कैननेलिनी बीन्स',
    ),
    Ingredients(
      text: 'cannellini beans',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'कैनेल्लिनी सेम',
    ),
    Ingredients(
      text: 'cantaloupe',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cantaloupe.png',
      hindiText: 'खरबूजा',
    ),
    Ingredients(
      text: 'capers',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/capers.jpg',
      hindiText: 'केपर्स',
    ),
    Ingredients(
      text: 'caramel sauce',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/soft-caramels.jpg',
      hindiText: 'कारमेल सॉस',
    ),
    Ingredients(
      text: 'caramels',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/soft-caramels.jpg',
      hindiText: 'Caramels',
    ),
    Ingredients(
      text: 'caraway seed',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/caraway-seeds.jpg',
      hindiText: 'काले ज़ीरे के बीज',
    ),
    Ingredients(
      text: 'cardamom',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cardamom.jpg',
      hindiText: 'इलायची',
    ),
    Ingredients(
      text: 'cardamom pods',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cardamom.jpg',
      hindiText: 'इलायची की फलियां',
    ),
    Ingredients(
      text: 'carp',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fish-fillet.jpg',
      hindiText: 'कार्प',
    ),
    Ingredients(
      text: 'carrots',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sliced-carrot.png',
      hindiText: 'गाजर',
    ),
    Ingredients(
      text: 'cat fish filets',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/catfish.jpg',
      hindiText: 'कैट फिश फिलैट',
    ),
    Ingredients(
      text: 'cauliflower',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cauliflower.jpg',
      hindiText: 'गोभी',
    ),
    Ingredients(
      text: 'cauliflower florets',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cauliflower.jpg',
      hindiText: 'फूलगोभी के फूल',
    ),
    Ingredients(
      text: 'cauliflower rice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cauliflower.jpg',
      hindiText: 'गोभी का पुलाव',
    ),
    Ingredients(
      text: 'celery',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg',
      hindiText: 'अजवायन',
    ),
    Ingredients(
      text: 'celery ribs',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg',
      hindiText: 'अजवाइन की पसलियां',
    ),
    Ingredients(
      text: 'celery root',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg',
      hindiText: 'अजवाइन की जड़',
    ),
    Ingredients(
      text: 'celery salt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg',
      hindiText: 'सेलेरी लवण',
    ),
    Ingredients(
      text: 'celery seed',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/celery.jpg',
      hindiText: 'अजमोदा के बीज',
    ),
    Ingredients(
      text: 'cereal',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/rice-crispy-cereal.png',
      hindiText: 'अनाज',
    ),
    Ingredients(
      text: 'champagne',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/champagne.png',
      hindiText: 'शँपेन',
    ),
    Ingredients(
      text: 'chana dal',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/bengal-gram.png',
      hindiText: 'चना दाल',
    ),
    Ingredients(
      text: 'cheddar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'छेददार',
    ),
    Ingredients(
      text: 'cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'पनीर',
    ),
    Ingredients(
      text: 'cheese curds',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'पनीर दही',
    ),
    Ingredients(
      text: 'cheese dip',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'पनीर डुबकी',
    ),
    Ingredients(
      text: 'cheese soup',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'पनीर सूप',
    ),
    Ingredients(
      text: 'cheese tortellini',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'पनीर टर्टलिनि',
    ),
    Ingredients(
      text: 'cherry',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cherries.jpg',
      hindiText: 'चेरी',
    ),
    Ingredients(
      text: 'cherry tomatoes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cherries.jpg',
      hindiText: 'चेरी टमाटर',
    ),
    Ingredients(
      text: 'chestnuts',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/chestnuts.jpg',
      hindiText: 'अखरोट',
    ),
    Ingredients(
      text: 'chia seeds',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/chia-seeds.jpg',
      hindiText: 'चिया बीज',
    ),
    Ingredients(
      text: 'chicken base',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'चिकन बेस',
    ),
    Ingredients(
      text: 'chicken bouillon',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'चिकन गुलदस्ता',
    ),
    Ingredients(
      text: 'chicken bouillon granules',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'चिकन बुलेनो ग्रेन्स',
    ),
    Ingredients(
      text: 'chicken breasts',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'चिकन ब्रेस्ट',
    ),
    Ingredients(
      text: 'chicken broth',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'मुर्गा शोर्बा',
    ),
    Ingredients(
      text: 'chicken drumsticks',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'इसलिए हीप्स्टर',
    ),
    Ingredients(
      text: 'chicken legs',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'मुगाॅ की टांग',
    ),
    Ingredients(
      text: 'chicken pieces',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'चिकन के टुकड़े',
    ),
    Ingredients(
      text: 'chicken sausage',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'चिकन सॉसेज',
    ),
    Ingredients(
      text: 'chicken stock',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'चिकन स्टॉक',
    ),
    Ingredients(
      text: 'chicken tenders',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'चिकन टेंडर्स',
    ),
    Ingredients(
      text: 'chicken thighs',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'चिकन जांघ',
    ),
    Ingredients(
      text: 'chicken wings',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'चिकन विंग्स',
    ),
    Ingredients(
      text: 'chickpea',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'काबुली चना',
    ),
    Ingredients(
      text: 'chile garlic sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg',
      hindiText: 'चिली लहसुन सॉस',
    ),
    Ingredients(
      text: 'chili paste',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg',
      hindiText: 'मिर्च पेस्ट',
    ),
    Ingredients(
      text: 'chili peppers',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg',
      hindiText: 'मिर्च',
    ),
    Ingredients(
      text: 'chili powder',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg',
      hindiText: 'मिर्च पाउडर',
    ),
    Ingredients(
      text: 'chili sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg',
      hindiText: 'चिली सॉस',
    ),
    Ingredients(
      text: 'chipotle chiles in adobo',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/chile-chipotle.jpg',
      hindiText: 'चिपोटल चिल्ड इन एडोबो',
    ),
    Ingredients(
      text: 'chipotle chilies',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/chile-chipotle.jpg',
      hindiText: 'चिपोटी मिर्च',
    ),
    Ingredients(
      text: 'chipotle peppers in adobo',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/chile-chipotle.jpg',
      hindiText: 'एडोबो में चिपोटल पेपर्स',
    ),
    Ingredients(
      text: 'chive & onion cream cheese spread',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-chives.jpg',
      hindiText: 'chive और प्याज क्रीम पनीर प्रसार',
    ),
    Ingredients(
      text: 'chocolate',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg',
      hindiText: 'चॉकलेट',
    ),
    Ingredients(
      text: 'chocolate chip cookies',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg',
      hindiText: 'चॉकलेट चिप कुकीज',
    ),
    Ingredients(
      text: 'chocolate chunks',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg',
      hindiText: 'चॉकलेट चंक्स',
    ),
    Ingredients(
      text: 'chocolate ice cream',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg',
      hindiText: 'चॉकलेट आइसक्रीम',
    ),
    Ingredients(
      text: 'chocolate milk',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg',
      hindiText: 'चॉकलेट दूध',
    ),
    Ingredients(
      text: 'chocolate sandwich cookies',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg',
      hindiText: 'चॉकलेट सैंडविच कुकीज़',
    ),
    Ingredients(
      text: 'chocolate syrup',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg',
      hindiText: 'चॉकलेट सीरप',
    ),
    Ingredients(
      text: 'chocolate wafer cookies',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-chocolate.jpg',
      hindiText: 'चॉकलेट वेफर कुकीज़',
    ),
    Ingredients(
      text: 'chorizo sausage',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/chorizo.jpg',
      hindiText: 'चोरिजो सॉसेज',
    ),
    Ingredients(
      text: 'cider vinegar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/apple-cider-vinegar.jpg',
      hindiText: 'साइडर सिरका',
    ),
    Ingredients(
      text: 'cilantro',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cilantro.png',
      hindiText: 'धनिया',
    ),
    Ingredients(
      text: 'cinnamon roll',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg',
      hindiText: 'दालचीनी रोल',
    ),
    Ingredients(
      text: 'cinnamon stick',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg',
      hindiText: 'दालचीनी',
    ),
    Ingredients(
      text: 'cinnamon sugar',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg',
      hindiText: 'दालचीनी शक्कर',
    ),
    Ingredients(
      text: 'cinnamon swirl bread',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg',
      hindiText: 'दालचीनी भंवर रोटी',
    ),
    Ingredients(
      text: 'clam juice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/clam-juice.png',
      hindiText: 'क्लैम रस',
    ),
    Ingredients(
      text: 'clams',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/clams.jpg',
      hindiText: 'बड़ी सीप',
    ),
    Ingredients(
      text: 'clarified butter',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ghee.jpg',
      hindiText: 'घी',
    ),
    Ingredients(
      text: 'clove',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cloves.jpg',
      hindiText: 'लौंग',
    ),
    Ingredients(
      text: 'coarse salt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salt.jpg',
      hindiText: 'दानेदार नमक',
    ),
    Ingredients(
      text: 'coarsely ground pepper',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salt.jpg',
      hindiText: 'मोटे पिसी मिर्ची',
    ),
    Ingredients(
      text: 'cocoa nibs',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png',
      hindiText: 'कोकोआ निब्स',
    ),
    Ingredients(
      text: 'cocoa powder',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png',
      hindiText: 'कोको पाउडर',
    ),
    Ingredients(
      text: 'coconut',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg',
      hindiText: 'नारियल',
    ),
    Ingredients(
      text: 'coconut aminos',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg',
      hindiText: 'नारियल अमीनो',
    ),
    Ingredients(
      text: 'coconut butter',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg',
      hindiText: 'नारियल मक्खन',
    ),
    Ingredients(
      text: 'coconut cream',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg',
      hindiText: 'नारियल क्रीम',
    ),
    Ingredients(
      text: 'coconut extract',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg',
      hindiText: 'नारियल निकालने',
    ),
    Ingredients(
      text: 'coconut flour',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg',
      hindiText: 'नारियल का आटा',
    ),
    Ingredients(
      text: 'coconut milk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg',
      hindiText: 'नारियल का दूध',
    ),
    Ingredients(
      text: 'coconut oil',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg',
      hindiText: 'नारियल का तेल',
    ),
    Ingredients(
      text: 'coconut water',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coconut.jpg',
      hindiText: 'नारियल पानी',
    ),
    Ingredients(
      text: 'cod',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cod-fillet.jpg',
      hindiText: 'कॉड',
    ),
    Ingredients(
      text: 'coffee',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brewed-coffee.jpg',
      hindiText: 'कॉफ़ी',
    ),
    Ingredients(
      text: 'cognac',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cognac.jpg',
      hindiText: 'कॉग्नेक',
    ),
    Ingredients(
      text: 'cola',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coca-cola.png',
      hindiText: 'कोला',
    ),
    Ingredients(
      text: 'colby jack',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/colby-jack.jpg',
      hindiText: 'कोल्बी जैक',
    ),
    Ingredients(
      text: 'collard greens',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/collard-greens.jpg',
      hindiText: 'हरा कोलार्ड',
    ),
    Ingredients(
      text: 'condensed cream of celery soup',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/evaporated-milk.png',
      hindiText: 'अजवाइन के सूप की गाढ़ी क्रीम',
    ),
    Ingredients(
      text: 'condensed cream of mushroom soup',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/evaporated-milk.png',
      hindiText: 'मशरूम सूप की गाढ़ा क्रीम',
    ),
    Ingredients(
      text: 'confectioners swerve',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/powdered-sugar.jpg',
      hindiText: 'कन्फेक्शनरों के झुंड',
    ),
    Ingredients(
      text: 'cooked bacon',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg',
      hindiText: 'पकाया बेकन',
    ),
    Ingredients(
      text: 'cooked brown rice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg',
      hindiText: 'पके हुए भूरे चावल',
    ),
    Ingredients(
      text: 'cooked chicken breast',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg',
      hindiText: 'पकाया चिकन स्तन',
    ),
    Ingredients(
      text: 'cooked ham',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg',
      hindiText: 'पकाया हैम',
    ),
    Ingredients(
      text: 'cooked long grain rice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg',
      hindiText: 'पका हुआ लंबा अनाज चावल',
    ),
    Ingredients(
      text: 'cooked pasta',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg',
      hindiText: 'पका हुआ पास्ता',
    ),
    Ingredients(
      text: 'cooked polenta',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg',
      hindiText: 'पका हुआ पोलेंटा',
    ),
    Ingredients(
      text: 'cooked quinoa',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg',
      hindiText: 'पका हुआ क्विनोआ',
    ),
    Ingredients(
      text: 'cooked wild rice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg',
      hindiText: 'पका हुआ जंगली चावल',
    ),
    Ingredients(
      text: 'cookies',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/shortbread-cookies.jpg',
      hindiText: 'कुकीज़',
    ),
    Ingredients(
      text: 'coriander',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cilantro.png',
      hindiText: 'धनिया',
    ),
    Ingredients(
      text: 'corn',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'मक्का',
    ),
    Ingredients(
      text: 'corn bread mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg',
      hindiText: 'कॉर्नब्रेड मिक्स',
    ),
    Ingredients(
      text: 'corn chips',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg',
      hindiText: 'मक्के की चिप्स',
    ),
    Ingredients(
      text: 'corn flakes cereal',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg',
      hindiText: 'कॉर्न फ्लेक्स अनाज',
    ),
    Ingredients(
      text: 'corn flour',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg',
      hindiText: 'मक्के का आटा',
    ),
    Ingredients(
      text: 'corn kernels',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg',
      hindiText: 'मकई गुठली',
    ),
    Ingredients(
      text: 'corn oil',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg',
      hindiText: 'मक्के का तेल',
    ),
    Ingredients(
      text: 'corn tortillas',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg',
      hindiText: 'मक्के की रोटी',
    ),
    Ingredients(
      text: 'cornbread',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cornbread.jpg',
      hindiText: 'मकई की रोटी',
    ),
    Ingredients(
      text: 'corned beef',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/beef-brisket.png',
      hindiText: 'गोमांस',
    ),
    Ingredients(
      text: 'cornish hens',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/dill-pickles.jpg',
      hindiText: 'कोर्निश मुर्गियाँ',
    ),
    Ingredients(
      text: 'cornmeal',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cornmeal.png',
      hindiText: 'मक्की का आटा',
    ),
    Ingredients(
      text: 'cornstarch',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/white-powder.jpg',
      hindiText: 'कॉर्नस्टार्च',
    ),
    Ingredients(
      text: 'cotija cheese',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/feta.png',
      hindiText: 'कोटिजा पनीर',
    ),
    Ingredients(
      text: 'cottage cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cottage-cheese.jpg',
      hindiText: 'छाना',
    ),
    Ingredients(
      text: 'country bread',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg',
      hindiText: 'देशी रोटी',
    ),
    Ingredients(
      text: 'courgettes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/zucchini.jpg',
      hindiText: 'Courgettes',
    ),
    Ingredients(
      text: 'couscous',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/couscous-cooked.jpg',
      hindiText: 'कूसकूस',
    ),
    Ingredients(
      text: 'cow pea',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/black-eyed-peas.jpg',
      hindiText: 'गाय मटर',
    ),
    Ingredients(
      text: 'crabmeat',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/crabmeat.jpg',
      hindiText: 'केकड़ा मांस',
    ),
    Ingredients(
      text: 'cracked pepper',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/crackers.jpg',
      hindiText: 'कुटी कालीमिर्च',
    ),
    Ingredients(
      text: 'cranberries',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cranberries.jpg',
      hindiText: 'क्रैनबेरी',
    ),
    Ingredients(
      text: 'cranberry juice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cranberries.jpg',
      hindiText: 'लाल रंग की खट्टी बेरी का रस',
    ),
    Ingredients(
      text: 'cream',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg',
      hindiText: 'मलाई',
    ),
    Ingredients(
      text: 'cream cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg',
      hindiText: 'मलाई पनीर',
    ),
    Ingredients(
      text: 'cream cheese block',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg',
      hindiText: 'क्रीम चीज़ ब्लॉक',
    ),
    Ingredients(
      text: 'cream of chicken soup',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg',
      hindiText: 'चिकन सूप की क्रीम',
    ),
    Ingredients(
      text: 'cream of tartar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg',
      hindiText: 'शोधित अर्गल',
    ),
    Ingredients(
      text: 'creamed corn',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg',
      hindiText: 'क्रीमयुक्त मकई',
    ),
    Ingredients(
      text: 'creamy peanut butter',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg',
      hindiText: 'मलाईदार मूंगफली का मक्खन',
    ),
    Ingredients(
      text: 'creme fraiche',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg',
      hindiText: 'खट्टी क्रीम',
    ),
    Ingredients(
      text: 'cremini mushrooms',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mushrooms.png',
      hindiText: 'सेरेमनी मशरूम',
    ),
    Ingredients(
      text: 'creole seasoning',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/dijon-mustard.jpg',
      hindiText: 'क्रियोल मसाला',
    ),
    Ingredients(
      text: 'crisp rice cereal',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/rice-crispy-cereal.png',
      hindiText: 'कुरकुरा चावल अनाज',
    ),
    Ingredients(
      text: 'croutons',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/croutons.png',
      hindiText: 'ब्रेड के तले हुए टुकड़े',
    ),
    Ingredients(
      text: 'crystallized ginger',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/candied-ginger-or-crystallized-ginger.jpg',
      hindiText: 'क्रिस्टलीकृत अदरक',
    ),
    Ingredients(
      text: 'cucumber',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cucumber.jpg',
      hindiText: 'खीरा',
    ),
    Ingredients(
      text: 'cumin seeds',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/ground-cumin.jpg',
      hindiText: 'जीरा',
    ),
    Ingredients(
      text: 'cup cake',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/plain-cupcake.jpg',
      hindiText: 'कप केक',
    ),
    Ingredients(
      text: 'currants',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/currants.jpg',
      hindiText: 'किशमिश',
    ),
    Ingredients(
      text: 'curry leaves',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/chili-paste.png',
      hindiText: 'करी पत्ते',
    ),
    Ingredients(
      text: 'dairy free milk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png',
      hindiText: 'डेयरी मुक्त दूध',
    ),
    Ingredients(
      text: 'dark brown sugar',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg',
      hindiText: 'गहरे भूरे शक्कर',
    ),
    Ingredients(
      text: 'dark chocolate',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg',
      hindiText: 'डार्क चॉकलेट',
    ),
    Ingredients(
      text: 'dark chocolate candy bars',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg',
      hindiText: 'डार्क चॉकलेट कैंडी बार',
    ),
    Ingredients(
      text: 'dark chocolate chips',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg',
      hindiText: 'डार्क चॉकलेट चिप्स',
    ),
    Ingredients(
      text: 'dark sesame oil',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg',
      hindiText: 'काले तिल का तेल',
    ),
    Ingredients(
      text: 'dates',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dates.jpg',
      hindiText: 'खजूर',
    ),
    Ingredients(
      text: 'deep dish pie crust',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pie-crust.jpg',
      hindiText: 'डीप डिश पाई क्रस्ट',
    ),
    Ingredients(
      text: 'deli ham',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham.png',
      hindiText: 'डेली हैम',
    ),
    Ingredients(
      text: 'deli turkey',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham.png',
      hindiText: 'डेली तुर्की',
    ),
    Ingredients(
      text: 'dessert oats',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg',
      hindiText: 'मिष्ठान ओट्स',
    ),
    Ingredients(
      text: 'dessert wine',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg',
      hindiText: 'मिठाई शराब',
    ),
    Ingredients(
      text: 'diced ham',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg',
      hindiText: 'डाइस्ड हैम',
    ),
    Ingredients(
      text: 'diet pop',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg',
      hindiText: 'आहार पॉप',
    ),
    Ingredients(
      text: 'dijon mustard',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/dijon-mustard.jpg',
      hindiText: 'डी जाँ सरसों',
    ),
    Ingredients(
      text: 'dill',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dill.jpg',
      hindiText: 'दिल',
    ),
    Ingredients(
      text: 'dill pickles',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dill.jpg',
      hindiText: 'सोआ अचार',
    ),
    Ingredients(
      text: 'hot dog',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/hotdogs.png',
      hindiText: 'हॉट - डॉग',
    ),
    Ingredients(
      text: 'double cream',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/white-cream.png',
      hindiText: 'डबल क्रीम',
    ),
    Ingredients(
      text: 'dried apricots',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png',
      hindiText: 'सूखे खुबानी',
    ),
    Ingredients(
      text: 'dried basil',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png',
      hindiText: 'सूखी तुलसी',
    ),
    Ingredients(
      text: 'dried cherries',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png',
      hindiText: 'सूखे चेरी',
    ),
    Ingredients(
      text: 'dried chorizo',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png',
      hindiText: 'सूखे चोरिज़ो',
    ),
    Ingredients(
      text: 'dried cranberries',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png',
      hindiText: 'सूखे करौंदे',
    ),
    Ingredients(
      text: 'dried dill',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png',
      hindiText: 'सूखे डिल',
    ),
    Ingredients(
      text: 'dried onion',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png',
      hindiText: 'सूखे प्याज',
    ),
    Ingredients(
      text: 'dried porcini mushrooms',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png',
      hindiText: 'सूखे पोर्चिनी मशरूम',
    ),
    Ingredients(
      text: 'dried rubbed sage',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png',
      hindiText: 'सूखा रगड़ ऋषि',
    ),
    Ingredients(
      text: 'dried thyme',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png',
      hindiText: 'अजवायन के फूल सूख',
    ),
    Ingredients(
      text: 'dried tomatoes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dried-sage.png',
      hindiText: 'सूखे टमाटर',
    ),
    Ingredients(
      text: 'dry milk',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg',
      hindiText: 'सूखा दूध',
    ),
    Ingredients(
      text: 'dry mustard',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg',
      hindiText: 'सूखी सरसों',
    ),
    Ingredients(
      text: 'dry red wine',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg',
      hindiText: 'सूखी लाल शराब',
    ),
    Ingredients(
      text: 'dry roasted peanuts',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg',
      hindiText: 'सूखी भुनी हुई मूंगफली',
    ),
    Ingredients(
      text: 'duck fat',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lard.png',
      hindiText: 'बतख वसा',
    ),
    Ingredients(
      text: 'dutch process cocoa powder',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/dutch-process-cocoa-powder.png',
      hindiText: 'डच प्रक्रिया कोको पाउडर',
    ),
    Ingredients(
      text: 'edamame',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/edamame.png',
      hindiText: 'Edamame',
    ),
    Ingredients(
      text: 'egg substitute',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/liquid-egg-substitute.jpg',
      hindiText: 'अंडा विकल्प',
    ),
    Ingredients(
      text: 'flour',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png',
      hindiText: 'आटा',
    ),
    Ingredients(
      text: 'flour tortillas',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png',
      hindiText: 'आटा tortillas',
    ),
    Ingredients(
      text: 'fontina cheese',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/fontina.jpg',
      hindiText: 'फॉन्टिना चीज़',
    ),
    Ingredients(
      text: 'food dye',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/food-coloring.png',
      hindiText: 'खानेका िदन',
    ),
    Ingredients(
      text: 'franks redhot sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/hotdogs.png',
      hindiText: 'फ्रैंक्स रेडहॉट सॉस',
    ),
    Ingredients(
      text: 'free range eggs',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg',
      hindiText: 'देसी अंडे',
    ),
    Ingredients(
      text: 'french bread',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/crusty-bread.jpg',
      hindiText: 'फ्रासीसी ब्रेड',
    ),
    Ingredients(
      text: 'fresh basil',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताज़ा तुलसी',
    ),
    Ingredients(
      text: 'fresh bean sprouts',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताजा सेम अंकुरित',
    ),
    Ingredients(
      text: 'fresh chives',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताजा जीवन',
    ),
    Ingredients(
      text: 'fresh corn',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताजा मकई',
    ),
    Ingredients(
      text: 'fresh corn kernels',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताजा मकई गुठली',
    ),
    Ingredients(
      text: 'fresh figs',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताजा अंजीर',
    ),
    Ingredients(
      text: 'fresh fruit',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताजे फल',
    ),
    Ingredients(
      text: 'fresh herbs',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताजा जड़ी बूटी',
    ),
    Ingredients(
      text: 'fresh mint',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताजा पोदीना',
    ),
    Ingredients(
      text: 'fresh mozzarella',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताजा मोज़ेरेला',
    ),
    Ingredients(
      text: 'fresh rosemary',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताजा दौनी',
    ),
    Ingredients(
      text: 'fresh thyme leaves',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'ताजा अजवायन की पत्ती',
    ),
    Ingredients(
      text: 'fried onions',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cooked-bacon.jpg',
      hindiText: 'तले हुए प्याज',
    ),
    Ingredients(
      text: 'frosting',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vanilla-frosting.png',
      hindiText: 'ठंडा करना',
    ),
    Ingredients(
      text: 'froyo bars',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/frozen-yogurt.png',
      hindiText: 'फ्रायो बार',
    ),
    Ingredients(
      text: 'frozen corn',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'जमे हुए मकई',
    ),
    Ingredients(
      text: 'frozen spinach',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'जमा हुआ पालक',
    ),
    Ingredients(
      text: 'fudge',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fudge-isolated.jpg',
      hindiText: 'ठगना',
    ),
    Ingredients(
      text: 'fudge topping',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fudge-isolated.jpg',
      hindiText: 'ठगना टॉपिंग',
    ),
    Ingredients(
      text: 'garam masala',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/garam-masala.jpg',
      hindiText: 'गरम मसाला',
    ),
    Ingredients(
      text: 'garbanzo bean flour',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/chickpeas.png',
      hindiText: 'गार्बनो बीन आटा',
    ),
    Ingredients(
      text: 'garlic',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png',
      hindiText: 'लहसुन',
    ),
    Ingredients(
      text: 'garlic paste',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png',
      hindiText: 'लहसून का पेस्ट',
    ),
    Ingredients(
      text: 'garlic powder',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png',
      hindiText: 'लहसुन पाउडर',
    ),
    Ingredients(
      text: 'garlic powder',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png',
      hindiText: 'लहसुन पाउडर',
    ),
    Ingredients(
      text: 'garlic salt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/garlic.png',
      hindiText: 'लहसुन नमक',
    ),
    Ingredients(
      text: 'gelatin',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/gelatin-powder.jpg',
      hindiText: 'जेलाटीन',
    ),
    Ingredients(
      text: 'gelatin',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/gelatin-powder.jpg',
      hindiText: 'जेलाटीन',
    ),
    Ingredients(
      text: 'gin',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png',
      hindiText: 'जिन',
    ),
    Ingredients(
      text: 'ginger',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png',
      hindiText: 'अदरक',
    ),
    Ingredients(
      text: 'ginger ale',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png',
      hindiText: 'अदरक युक्त झागदार शराब',
    ),
    Ingredients(
      text: 'ginger paste',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png',
      hindiText: 'अदरक का पेस्ट',
    ),
    Ingredients(
      text: 'ginger-garlic paste',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png',
      hindiText: 'अदरक-लहसुन का पेस्ट',
    ),
    Ingredients(
      text: 'gingersnap cookies',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ginger.png',
      hindiText: 'gingersnap कुकीज़',
    ),
    Ingredients(
      text: 'gnocchi',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/gnocchi-isolated.jpg',
      hindiText: 'ग्नोची',
    ),
    Ingredients(
      text: 'goat cheese',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png',
      hindiText: 'बकरी के दूध का पनीर',
    ),
    Ingredients(
      text: 'golden raisins',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn-syrup.png',
      hindiText: 'सुनहरा किशमिश',
    ),
    Ingredients(
      text: 'gorgonzola',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/gorgonzola.jpg',
      hindiText: 'Gorgonzola',
    ),
    Ingredients(
      text: 'gouda cheese',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/gouda.jpg',
      hindiText: 'गौड़ा पनीर',
    ),
    Ingredients(
      text: 'graham cracker crumbs',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png',
      hindiText: 'ग्रैहम पटाखा',
    ),
    Ingredients(
      text: 'graham cracker pie crust',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png',
      hindiText: 'ग्रैहम पटाखा पाई क्रस्ट',
    ),
    Ingredients(
      text: 'graham crackers',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png',
      hindiText: 'ग्राहम के पटाखे',
    ),
    Ingredients(
      text: 'grain blend',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/rice-wild-uncooked.png',
      hindiText: 'अनाज मिश्रण',
    ),
    Ingredients(
      text: 'grand marnier',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/grand-marnier.jpg',
      hindiText: 'ग्रांड Marnier',
    ),
    Ingredients(
      text: 'granny smith apples',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/grannysmith-apple.png',
      hindiText: 'दादी स्मिथ सेब',
    ),
    Ingredients(
      text: 'granola',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/granola.jpg',
      hindiText: 'ग्रेनोला',
    ),
    Ingredients(
      text: 'granulated garlic',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png',
      hindiText: 'दानेदार लहसुन',
    ),
    Ingredients(
      text: 'grape tomatoes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg',
      hindiText: 'अंगूर टमाटर',
    ),
    Ingredients(
      text: 'grapefruit',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg',
      hindiText: 'चकोतरा',
    ),
    Ingredients(
      text: 'grapeseed oil',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg',
      hindiText: 'अंगूर के बीज का तेल',
    ),
    Ingredients(
      text: 'gravy',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/gravy.jpg',
      hindiText: 'रस',
    ),
    Ingredients(
      text: 'great northern beans',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/white-beans.jpg',
      hindiText: 'महान उत्तरी सेम',
    ),
    Ingredients(
      text: 'greek yogurt',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/plain-yogurt.jpg',
      hindiText: 'ग्रीक दही',
    ),
    Ingredients(
      text: 'green beans',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg',
      hindiText: 'हरी सेम',
    ),
    Ingredients(
      text: 'green bell pepper',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg',
      hindiText: 'हरी शिमला मिर्च',
    ),
    Ingredients(
      text: 'green chili pepper',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg',
      hindiText: 'हरी मिर्ची',
    ),
    Ingredients(
      text: 'green food coloring',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg',
      hindiText: 'ग्रीन फूड कलरिंग',
    ),
    Ingredients(
      text: 'green grapes',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg',
      hindiText: 'हरे अंगूर',
    ),
    Ingredients(
      text: 'green olives',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg',
      hindiText: 'हरा जैतून',
    ),
    Ingredients(
      text: 'green onions',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg',
      hindiText: 'हरा प्याज',
    ),
    Ingredients(
      text: 'greens',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg',
      hindiText: 'साग',
    ),
    Ingredients(
      text: 'grill cheese',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/halloumi.png',
      hindiText: 'ग्रिल चीज़',
    ),
    Ingredients(
      text: 'grill seasoning',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/halloumi.png',
      hindiText: 'ग्रिल सीज़निंग',
    ),
    Ingredients(
      text: 'ground allspice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'सारे मसालों को कूटो',
    ),
    Ingredients(
      text: 'ground ancho chili',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'ग्राउंड एको चिल्ली',
    ),
    Ingredients(
      text: 'ground beef',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'वास्तविक गोमांस',
    ),
    Ingredients(
      text: 'ground chicken',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'पिसा हुआ चिकन',
    ),
    Ingredients(
      text: 'ground chipotle chile pepper',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'ग्राउंड चिपोटल चिली पिप',
    ),
    Ingredients(
      text: 'ground cinnamon',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'जमीन दालचीनी',
    ),
    Ingredients(
      text: 'ground cinnamon',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'जमीन दालचीनी',
    ),
    Ingredients(
      text: 'ground cloves',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'जमीन लौंग',
    ),
    Ingredients(
      text: 'ground coriander seeds',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'जमीन धनिया के बीज',
    ),
    Ingredients(
      text: 'ground cumin',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'पिसा जीरा',
    ),
    Ingredients(
      text: 'ground flaxseed',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'जमीं अलसी',
    ),
    Ingredients(
      text: 'ground ginger',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'अदरक',
    ),
    Ingredients(
      text: 'ground lamb',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'ज़मीनी भेड़ का बच्चा',
    ),
    Ingredients(
      text: 'ground mace',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'पिसी जावित्री',
    ),
    Ingredients(
      text: 'ground nutmeg',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'ज़मीनी जायफल',
    ),
    Ingredients(
      text: 'ground pork',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'ग्राउंड पोर्क',
    ),
    Ingredients(
      text: 'ground pork sausage',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'ग्राउंड पोर्क सॉसेज',
    ),
    Ingredients(
      text: 'ground veal',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'ग्राउंड वील',
    ),
    Ingredients(
      text: 'gruyere',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/gruyere.jpg',
      hindiText: 'Gruyère',
    ),
    Ingredients(
      text: 'guacamole',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/guacamole.jpg',
      hindiText: 'गुआकामोल',
    ),
    Ingredients(
      text: 'half n half',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fluid-cream.jpg',
      hindiText: 'आधा एन आधा',
    ),
    Ingredients(
      text: 'halibut fillet',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/halibut-fillet.jpg',
      hindiText: 'हलिबेट पट्टिका',
    ),
    Ingredients(
      text: 'ham',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ham-whole.jpg',
      hindiText: 'जांघ',
    ),
    Ingredients(
      text: 'hamburger buns',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/hamburger-bun.jpg',
      hindiText: 'हैमबर्गर बन्स',
    ),
    Ingredients(
      text: 'hard cooked eggs',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/hard-boiled-egg.png',
      hindiText: 'कड़ी पका अंडे',
    ),
    Ingredients(
      text: 'harissa',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/harissa-paste.jpg',
      hindiText: 'ह री सा',
    ),
    Ingredients(
      text: 'hash brown potatoes',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/hash-brown-potatoes.png',
      hindiText: 'भुने हुए भूरे आलू',
    ),
    Ingredients(
      text: 'hazelnuts',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/hazelnuts.jpg',
      hindiText: 'अखरोट',
    ),
    Ingredients(
      text: 'healthy request cream of celery soup',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cream-of-celery-soup.jpg',
      hindiText: 'अजवाइन के सूप का स्वस्थ अनुरोध क्रीम',
    ),
    Ingredients(
      text: 'hemp seeds',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/hemp-oil.jpg',
      hindiText: 'भांग के बीज',
    ),
    Ingredients(
      text: 'herbes de provence',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/dried-herbs.png',
      hindiText: 'स्थानीय वनस्पतियां',
    ),
    Ingredients(
      text: 'herbs',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-fresh-herbs.jpg',
      hindiText: 'जड़ी बूटी',
    ),
    Ingredients(
      text: 'hersheys kisses brand milk chocolates',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png',
      hindiText: 'Hersheys चुंबन ब्रांड दूध चॉकलेट',
    ),
    Ingredients(
      text: 'hoisin sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg',
      hindiText: 'होसिन चटनी',
    ),
    Ingredients(
      text: 'honey mustard',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png',
      hindiText: 'मीठी सरसों',
    ),
    Ingredients(
      text: 'horseradish',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/horseradish.jpg',
      hindiText: 'हॉर्सरैडिश',
    ),
    Ingredients(
      text: 'hot sauce',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/hot-sauce-or-tabasco.png',
      hindiText: 'गर्म सौस',
    ),
    Ingredients(
      text: 'hummus',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/hummus.jpg',
      hindiText: 'हुम्मुस',
    ),
    Ingredients(
      text: 'ice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ice-cubes.png',
      hindiText: 'बर्फ',
    ),
    Ingredients(
      text: 'ice cream',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ice-cubes.png',
      hindiText: 'आइसक्रीम',
    ),
    Ingredients(
      text: 'instant chocolate pudding mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg',
      hindiText: 'तत्काल चॉकलेट का हलवा मिश्रण',
    ),
    Ingredients(
      text: 'instant coffee powder',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg',
      hindiText: 'तत्काल कॉफी पाउडर',
    ),
    Ingredients(
      text: 'instant espresso powder',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg',
      hindiText: 'तत्काल एस्प्रेसो पाउडर',
    ),
    Ingredients(
      text: 'instant lemon pudding mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg',
      hindiText: 'तत्काल नींबू का हलवा मिश्रण',
    ),
    Ingredients(
      text: 'instant yeast',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg',
      hindiText: 'तत्काल खमीर',
    ),
    Ingredients(
      text: 'irish cream',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/baileys-liqueur.png',
      hindiText: 'आयरिश क्रीम',
    ),
    Ingredients(
      text: 'italian bread',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg',
      hindiText: 'इटालियन ब्रेड',
    ),
    Ingredients(
      text: 'italian cheese blend',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg',
      hindiText: 'इतालवी पनीर मिश्रण',
    ),
    Ingredients(
      text: 'italian sausages',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg',
      hindiText: 'इटालियन सॉसेज',
    ),
    Ingredients(
      text: 'italian seasoning',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/italian-bread.jpg',
      hindiText: 'इतालवी मसाला',
    ),
    Ingredients(
      text: 'jaggery',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/jaggery.jpg',
      hindiText: 'गुड़',
    ),
    Ingredients(
      text: 'jalapeno',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/jalapeno-pepper.png',
      hindiText: 'jalapeno',
    ),
    Ingredients(
      text: 'jasmine rice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/rice-jasmine-cooked.jpg',
      hindiText: 'चमेली चावल',
    ),
    Ingredients(
      text: 'jelly',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/grape-jelly.jpg',
      hindiText: 'जेली',
    ),
    Ingredients(
      text: 'jicama',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/jicama.jpg',
      hindiText: 'Jicama',
    ),
    Ingredients(
      text: 'jimmies',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/colorful-sprinkles.jpg',
      hindiText: 'Jimmies',
    ),
    Ingredients(
      text: 'juice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/apple-juice.jpg',
      hindiText: 'रस',
    ),
    Ingredients(
      text: 'jumbo shell pasta',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/shrimp.png',
      hindiText: 'जंबो शेल पास्ता',
    ),
    Ingredients(
      text: 'kaffir lime leaves',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/lime-leaves.jpg',
      hindiText: 'काफिर नींबू पत्ते',
    ),
    Ingredients(
      text: 'kahlua',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/coffee-liqueur.jpg',
      hindiText: 'Kahlua',
    ),
    Ingredients(
      text: 'kalamata olives',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/calamata-or-kalamata-olives.jpg',
      hindiText: 'कलमाता जैतून',
    ),
    Ingredients(
      text: 'kale',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/kale.jpg',
      hindiText: 'गोभी',
    ),
    Ingredients(
      text: 'ketchup',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ketchup.png',
      hindiText: 'चटनी',
    ),
    Ingredients(
      text: 'lb cake',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pound-cake.jpg',
      hindiText: 'एलबी केक',
    ),
    Ingredients(
      text: 'lean ground beef',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'कम पीसा हुआ गोमांस',
    ),
    Ingredients(
      text: 'lean ground turkey',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'लीन ग्राउंड टर्की',
    ),
    Ingredients(
      text: 'lean pork tenderloin',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/fresh-ground-beef.jpg',
      hindiText: 'लीन पोर्क टेंडरलॉइन',
    ),
    Ingredients(
      text: 'leeks',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/leeks.jpg',
      hindiText: 'लीक',
    ),
    Ingredients(
      text: 'leg of lamb',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/leg-of-lamb.png',
      hindiText: 'मेमने का पैर',
    ),
    Ingredients(
      text: 'lemon',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png',
      hindiText: 'नींबू',
    ),
    Ingredients(
      text: 'lemon curd',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png',
      hindiText: 'नींबू दही',
    ),
    Ingredients(
      text: 'lemon juice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png',
      hindiText: 'नींबू का रस',
    ),
    Ingredients(
      text: 'lemon peel',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png',
      hindiText: 'नींबू का छिलका',
    ),
    Ingredients(
      text: 'lemon pepper',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png',
      hindiText: 'निंबू मिर्च',
    ),
    Ingredients(
      text: 'lemon wedges',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png',
      hindiText: 'नींबू फांक',
    ),
    Ingredients(
      text: 'lemongrass',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png',
      hindiText: 'एक प्रकार का पौधा',
    ),
    Ingredients(
      text: 'lettuce',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/iceberg-lettuce.jpg',
      hindiText: 'सलाद',
    ),
    Ingredients(
      text: 'lettuce leaves',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/iceberg-lettuce.jpg',
      hindiText: 'सलाद की पत्तियाँ',
    ),
    Ingredients(
      text: 'light butter',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg',
      hindiText: 'हल्का मक्खन',
    ),
    Ingredients(
      text: 'light coconut milk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg',
      hindiText: 'हल्का नारियल दूध',
    ),
    Ingredients(
      text: 'light corn syrup',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg',
      hindiText: 'हल्की कोर्न सिरप',
    ),
    Ingredients(
      text: 'light cream cheese',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg',
      hindiText: 'लाइट क्रीम चीज़',
    ),
    Ingredients(
      text: 'light mayonnaise',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg',
      hindiText: 'लाइट मेयोनेज़',
    ),
    Ingredients(
      text: 'light olive oil',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg',
      hindiText: 'पतला जैतून का तेल',
    ),
    Ingredients(
      text: 'light soy sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg',
      hindiText: 'हल्की सोया चटनी',
    ),
    Ingredients(
      text: 'lime',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lime.jpg',
      hindiText: 'चूना',
    ),
    Ingredients(
      text: 'lime juice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/zest-lime.jpg',
      hindiText: 'नींबू का रस',
    ),
    Ingredients(
      text: 'lime wedges',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/zest-lime.jpg',
      hindiText: 'लाइम वेजेज',
    ),
    Ingredients(
      text: 'lime zest',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/zest-lime.jpg',
      hindiText: 'लाइम ज़ेस्ट',
    ),
    Ingredients(
      text: 'linguine',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/spaghetti.jpg',
      hindiText: 'Linguine',
    ),
    Ingredients(
      text: 'liquid smoke',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png',
      hindiText: 'तरल धुआं',
    ),
    Ingredients(
      text: 'liquid stevia',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png',
      hindiText: 'तरल स्टेविया',
    ),
    Ingredients(
      text: 'liquor',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/rum-dark.jpg',
      hindiText: 'शराब',
    ),
    Ingredients(
      text: 'live lobster',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lobster.png',
      hindiText: 'लाइव लॉबस्टर',
    ),
    Ingredients(
      text: 'long-grain rice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/rice-white-long-grain-or-basmatii-cooked.jpg',
      hindiText: 'लंबे दाने वाला चावल',
    ),
    Ingredients(
      text: 'low fat buttermilk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png',
      hindiText: 'लो फैट बटरमिल्क',
    ),
    Ingredients(
      text: 'low fat milk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png',
      hindiText: 'कम वसा वाला दूध',
    ),
    Ingredients(
      text: 'low fat milk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png',
      hindiText: 'कम वसा वाला दूध',
    ),
    Ingredients(
      text: 'low fat plain yogurt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png',
      hindiText: 'लो फैट प्लेन योगर्ट',
    ),
    Ingredients(
      text: 'low fat ricotta cheese',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png',
      hindiText: 'लो फैट रिकोटा पनीर',
    ),
    Ingredients(
      text: 'low fat sour cream',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png',
      hindiText: 'कम वसा खट्टा क्रीम',
    ),
    Ingredients(
      text: 'low sodium chicken broth',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg',
      hindiText: 'कम सोडियम चिकन शोरबा',
    ),
    Ingredients(
      text: 'low sodium soy sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg',
      hindiText: 'कम सोडियम सोया सॉस',
    ),
    Ingredients(
      text: 'low-sodium chicken stock',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/broth.jpg',
      hindiText: 'कम सोडियम चिकन स्टॉक',
    ),
    Ingredients(
      text: 'lower sodium beef broth',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg',
      hindiText: 'कम सोडियम गोमांस शोरबा',
    ),
    Ingredients(
      text: 'lump crab',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/lump-crabmeat.png',
      hindiText: 'गांठ केकड़ा',
    ),
    Ingredients(
      text: 'm&m candies',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png',
      hindiText: 'एम एंड एम कैंडीज',
    ),
    Ingredients(
      text: 'macadamia nuts',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/macadamia-nuts.png',
      hindiText: 'मैकाडामिया नट्स',
    ),
    Ingredients(
      text: 'macaroni and cheese mix',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/macaroni.png',
      hindiText: 'मकारोनी और पनीर मिक्स',
    ),
    Ingredients(
      text: 'malt drink mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg',
      hindiText: 'माल्ट ड्रिंक मिक्स',
    ),
    Ingredients(
      text: 'mandarin orange sections',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mandarin-or-tangerines-or-clementines.jpg',
      hindiText: 'मैंडरिन ऑरेंज सेक्शन',
    ),
    Ingredients(
      text: 'mandarin oranges',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mandarin-or-tangerines-or-clementines.jpg',
      hindiText: 'नारंगी संतरे',
    ),
    Ingredients(
      text: 'mango',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mango.jpg',
      hindiText: 'आम',
    ),
    Ingredients(
      text: 'maple syrup',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/maple-syrup.png',
      hindiText: 'मेपल सिरप',
    ),
    Ingredients(
      text: 'maraschino cherries',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/maraschino.jpg',
      hindiText: 'मराशीनो चेरीज़',
    ),
    Ingredients(
      text: 'margarine',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg',
      hindiText: 'नकली मक्खन',
    ),
    Ingredients(
      text: 'marinara sauce',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg',
      hindiText: 'Marinara सॉस',
    ),
    Ingredients(
      text: 'marjoram',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/marjoram.jpg',
      hindiText: 'मार्जारम',
    ),
    Ingredients(
      text: 'marsala wine',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg',
      hindiText: 'मर्सला वाइन',
    ),
    Ingredients(
      text: 'marshmallow fluff',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/normal-marshmallows.jpg',
      hindiText: 'मार्शमैलो फुल',
    ),
    Ingredients(
      text: 'marshmallows',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/normal-marshmallows.jpg',
      hindiText: 'मार्श मैलो - एक प्रकार की मिठाई',
    ),
    Ingredients(
      text: 'masa harina',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn-flour.jpg',
      hindiText: 'मासा हरिना',
    ),
    Ingredients(
      text: 'mascarpone',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/white-cream-fluffy.jpg',
      hindiText: 'Mascarpone',
    ),
    Ingredients(
      text: 'mat beans',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/moth-bean.png',
      hindiText: 'मैट बीन्स',
    ),
    Ingredients(
      text: 'matcha tea',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/matcha-powder.jpg',
      hindiText: 'माचा चाय',
    ),
    Ingredients(
      text: 'mayonnaise',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mayonnaise.png',
      hindiText: 'मेयोनेज़',
    ),
    Ingredients(
      text: 'meat',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'मांस',
    ),
    Ingredients(
      text: 'meat',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg',
      hindiText: 'मांस',
    ),
    Ingredients(
      text: 'meatballs',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/meatballs.png',
      hindiText: 'Meatballs',
    ),
    Ingredients(
      text: 'medjool dates',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dates.jpg',
      hindiText: 'मेड्युल खजूर',
    ),
    Ingredients(
      text: 'mexican cream',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mexicorn.png',
      hindiText: 'मैक्सिकन क्रीम',
    ),
    Ingredients(
      text: 'meyer lemon juice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/lemon.png',
      hindiText: 'मेयर नींबू का रस',
    ),
    Ingredients(
      text: 'milk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png',
      hindiText: 'दूध',
    ),
    Ingredients(
      text: 'milk chocolate chips',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg',
      hindiText: 'दूध चॉकलेट चिप्स',
    ),
    Ingredients(
      text: 'mint chutney',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mint.jpg',
      hindiText: 'पुदीने की चटनी',
    ),
    Ingredients(
      text: 'minute rice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/uncooked-white-rice.png',
      hindiText: 'मिनट चावल',
    ),
    Ingredients(
      text: 'miracle whip',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mayonnaise.png',
      hindiText: 'चमत्कार आदेश',
    ),
    Ingredients(
      text: 'mirin',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mirin.jpg',
      hindiText: 'Mirin',
    ),
    Ingredients(
      text: 'miso',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/miso.jpg',
      hindiText: 'मीसो',
    ),
    Ingredients(
      text: 'molasses',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/molasses.jpg',
      hindiText: 'गुड़',
    ),
    Ingredients(
      text: 'monterey jack cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/shredded-cheese-white.jpg',
      hindiText: 'मोंटेरे जैक पनीर',
    ),
    Ingredients(
      text: 'mushroom',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mushrooms.png',
      hindiText: 'मशरूम',
    ),
    Ingredients(
      text: 'mussels',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mussels.jpg',
      hindiText: 'शंबुक',
    ),
    Ingredients(
      text: 'mustard',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/regular-mustard.jpg',
      hindiText: 'सरसों',
    ),
    Ingredients(
      text: 'mustard seeds',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/regular-mustard.jpg',
      hindiText: 'सरसों के बीज',
    ),
    Ingredients(
      text: 'napa cabbage',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/napa-cabbage.jpg',
      hindiText: 'नापा पत्तागोभी',
    ),
    Ingredients(
      text: 'navel oranges',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mandarin-or-tangerines-or-clementines.jpg',
      hindiText: 'नाभि वाले संतरे',
    ),
    Ingredients(
      text: 'nectarine',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/nectarines.jpg',
      hindiText: 'Nectarine',
    ),
    Ingredients(
      text: 'new potatoes',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/new-potatoes.jpg',
      hindiText: 'नए आलू',
    ),
    Ingredients(
      text: 'non-fat greek yogurt',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/filet-mignon.png',
      hindiText: 'नॉन-फैट ग्रीक योगर्ट',
    ),
    Ingredients(
      text: 'nonfat cool whip',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg',
      hindiText: 'नॉनफ़ैट कूल व्हिप',
    ),
    Ingredients(
      text: 'nonfat milk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg',
      hindiText: 'वसारहित दूध',
    ),
    Ingredients(
      text: 'nori',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/nori.jpg',
      hindiText: 'नोरी',
    ),
    Ingredients(
      text: 'nut butter',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/nut-butter.png',
      hindiText: 'अखरोट का मक्खन',
    ),
    Ingredients(
      text: 'nut meal',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/coconut-milk.png',
      hindiText: 'अखरोट भोजन',
    ),
    Ingredients(
      text: 'nutella',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/hazelnut-chocolate-spread.jpg',
      hindiText: 'Nutella',
    ),
    Ingredients(
      text: 'nutritional yeast',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/nutritional-yeast.png',
      hindiText: 'पोषण खमीर',
    ),
    Ingredients(
      text: 'oat flour',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg',
      hindiText: 'जई का आटा',
    ),
    Ingredients(
      text: 'oats',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg',
      hindiText: 'जई',
    ),
    Ingredients(
      text: 'oil',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg',
      hindiText: 'तेल',
    ),
    Ingredients(
      text: 'oil packed sun dried tomatoes',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/canned-tuna.png',
      hindiText: 'तेल पैक सूरज सूखे टमाटर',
    ),
    Ingredients(
      text: 'okra',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/okra.png',
      hindiText: 'ओकरा',
    ),
    Ingredients(
      text: 'old bay seasoning',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png',
      hindiText: 'पुराना बे मसाला',
    ),
    Ingredients(
      text: 'olive oil',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/olives-mixed.jpg',
      hindiText: 'जैतून का तेल',
    ),
    Ingredients(
      text: 'olives',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/olives-mixed.jpg',
      hindiText: 'जैतून',
    ),
    Ingredients(
      text: 'onion',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png',
      hindiText: 'प्याज',
    ),
    Ingredients(
      text: 'onion powder',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png',
      hindiText: 'प्याज पाउडर',
    ),
    Ingredients(
      text: 'onion soup mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png',
      hindiText: 'प्याज सूप मिश्रण',
    ),
    Ingredients(
      text: 'orange',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png',
      hindiText: 'संतरा',
    ),
    Ingredients(
      text: 'orange bell pepper',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png',
      hindiText: 'नारंगी बेल मिर्च',
    ),
    Ingredients(
      text: 'orange juice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png',
      hindiText: 'संतरे का रस',
    ),
    Ingredients(
      text: 'orange juice concentrate',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png',
      hindiText: 'संतरे का रस',
    ),
    Ingredients(
      text: 'orange liqueur',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png',
      hindiText: 'संतरे की शराब',
    ),
    Ingredients(
      text: 'orange marmalade',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png',
      hindiText: 'संतरे का मुरब्बा',
    ),
    Ingredients(
      text: 'orange oil',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png',
      hindiText: 'संतरे का तेल',
    ),
    Ingredients(
      text: 'orange zest',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orange.png',
      hindiText: 'नारंगी का छिलका',
    ),
    Ingredients(
      text: 'oregano',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oregano.jpg',
      hindiText: 'ओरिगैनो',
    ),
    Ingredients(
      text: 'oreo cookies',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oreos.png',
      hindiText: 'ओरियो कुकीज़',
    ),
    Ingredients(
      text: 'orzo',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/orzo.jpg',
      hindiText: 'orzo',
    ),
    Ingredients(
      text: 'oyster sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oysters.jpg',
      hindiText: 'कस्तूरा सॉस',
    ),
    Ingredients(
      text: 'oysters',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/oysters.jpg',
      hindiText: 'कस्तूरी',
    ),
    Ingredients(
      text: 'palm sugar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg',
      hindiText: 'ताड़ के चीनी',
    ),
    Ingredients(
      text: 'pancetta',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pancetta.png',
      hindiText: 'Pancetta',
    ),
    Ingredients(
      text: 'paneer',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/paneer.png',
      hindiText: 'पनीर',
    ),
    Ingredients(
      text: 'panko',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/panko.jpg',
      hindiText: 'Panko',
    ),
    Ingredients(
      text: 'papaya',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/papaya.png',
      hindiText: 'पपीता',
    ),
    Ingredients(
      text: 'paprika',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/bell-pepper-orange.png',
      hindiText: 'लाल शिमला मिर्च',
    ),
    Ingredients(
      text: 'parmigiano reggiano',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parmesan.jpg',
      hindiText: 'परमिगियानो रेजिगो',
    ),
    Ingredients(
      text: 'parsley',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parsley.jpg',
      hindiText: 'अजमोद',
    ),
    Ingredients(
      text: 'parsley flakes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parsley.jpg',
      hindiText: 'अजमोद गुच्छे',
    ),
    Ingredients(
      text: 'parsnip',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parsnip.jpg',
      hindiText: 'चुकंदर',
    ),
    Ingredients(
      text: 'part-skim mozzarella cheese',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ricotta.png',
      hindiText: 'भाग-स्किम मोज़ेरेला चीज़',
    ),
    Ingredients(
      text: 'pasta',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg',
      hindiText: 'पास्ता',
    ),
    Ingredients(
      text: 'pasta salad mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg',
      hindiText: 'पास्ता सलाद मिक्स',
    ),
    Ingredients(
      text: 'pasta sauce',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/tomato-sauce-or-pasta-sauce.jpg',
      hindiText: 'पास्ता सॉस',
    ),
    Ingredients(
      text: 'pastry flour',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pastrami.jpg',
      hindiText: 'पेस्ट्री का आटा',
    ),
    Ingredients(
      text: 'peach',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peach.png',
      hindiText: 'आड़ू',
    ),
    Ingredients(
      text: 'peanut butter',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png',
      hindiText: 'मूंगफली का मक्खन',
    ),
    Ingredients(
      text: 'peanut butter chips',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png',
      hindiText: 'मूंगफली का मक्खन चिप्स',
    ),
    Ingredients(
      text: 'peanut butter cups',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png',
      hindiText: 'मूंगफली का मक्खन कप',
    ),
    Ingredients(
      text: 'peanut oil',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png',
      hindiText: 'मूंगफली का तेल',
    ),
    Ingredients(
      text: 'peanuts',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peanuts.png',
      hindiText: 'मूंगफली',
    ),
    Ingredients(
      text: 'pear liqueur',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pear-juice.jpg',
      hindiText: 'नाशपाती मदिरा',
    ),
    Ingredients(
      text: 'pearl barley',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pearl-onions.png',
      hindiText: 'जौ का दलिया',
    ),
    Ingredients(
      text: 'pearl onions',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pearl-onions.png',
      hindiText: 'मोती प्याज',
    ),
    Ingredients(
      text: 'peas',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/peas.jpg',
      hindiText: 'मटर',
    ),
    Ingredients(
      text: 'pecan',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pecans.jpg',
      hindiText: 'एक प्रकार का अखरोट',
    ),
    Ingredients(
      text: 'pecan pieces',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pecans.jpg',
      hindiText: 'अखरोट के टुकड़े',
    ),
    Ingredients(
      text: 'pecorino',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/parmesan.jpg',
      hindiText: 'पेकोरिनो',
    ),
    Ingredients(
      text: 'penne',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/penne-pasta.jpg',
      hindiText: 'पेन्ने',
    ),
    Ingredients(
      text: 'peperoncino',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pepperoncini.jpg',
      hindiText: 'Peperoncino',
    ),
    Ingredients(
      text: 'pepper jack cheese',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg',
      hindiText: 'काली मिर्च जैक पनीर',
    ),
    Ingredients(
      text: 'peppercorns',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg',
      hindiText: 'मिर्च',
    ),
    Ingredients(
      text: 'peppermint baking chips',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg',
      hindiText: 'पेपरमिंट बेकिंग चिप्स',
    ),
    Ingredients(
      text: 'peppermint extract',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg',
      hindiText: 'पुदीना अर्क',
    ),
    Ingredients(
      text: 'pepperoni',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg',
      hindiText: 'पेपरोनी',
    ),
    Ingredients(
      text: 'peppers',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pepper.jpg',
      hindiText: 'काली मिर्च',
    ),
    Ingredients(
      text: 'pesto',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/basil-pesto.png',
      hindiText: 'पेस्टो',
    ),
    Ingredients(
      text: 'pickle relish',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/dill-pickles.jpg',
      hindiText: 'अचार का स्वाद',
    ),
    Ingredients(
      text: 'pickles',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/dill-pickles.jpg',
      hindiText: 'अचार',
    ),
    Ingredients(
      text: 'pie crust',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pie-crust.jpg',
      hindiText: 'पाई क्रस्ट',
    ),
    Ingredients(
      text: 'pimento stuffed olives',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pimento.png',
      hindiText: 'पिंटो भरवां जैतून',
    ),
    Ingredients(
      text: 'pimientos',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pimento.png',
      hindiText: 'Pimientos',
    ),
    Ingredients(
      text: 'pine nuts',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pine-nuts.png',
      hindiText: 'पाइन नट्स',
    ),
    Ingredients(
      text: 'pineapple',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg',
      hindiText: 'अनानास',
    ),
    Ingredients(
      text: 'pineapple chunks',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg',
      hindiText: 'अनानास विखंडू',
    ),
    Ingredients(
      text: 'pineapple in juice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg',
      hindiText: 'अनानास का रस',
    ),
    Ingredients(
      text: 'pineapple juice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pineapple.jpg',
      hindiText: 'अनानास का रस',
    ),
    Ingredients(
      text: 'pink himalayan salt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/apple.jpg',
      hindiText: 'गुलाबी हिमालयन नमक',
    ),
    Ingredients(
      text: 'pinto beans',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pinto-beans.jpg',
      hindiText: 'पिंटो सेम',
    ),
    Ingredients(
      text: 'pistachios',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pistachios.jpg',
      hindiText: 'पिसता',
    ),
    Ingredients(
      text: 'pita',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pita-bread.jpg',
      hindiText: 'अरबी रोटी',
    ),
    Ingredients(
      text: 'pizza crust',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg',
      hindiText: 'पिज्जा परत',
    ),
    Ingredients(
      text: 'pizza mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg',
      hindiText: 'पिज्जा मिक्स',
    ),
    Ingredients(
      text: 'plain greek yogurt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png',
      hindiText: 'सादा ग्रीक दही',
    ),
    Ingredients(
      text: 'plain nonfat yogurt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png',
      hindiText: 'सादा नोनफेट दही',
    ),
    Ingredients(
      text: 'plain yogurt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png',
      hindiText: 'सादा दही',
    ),
    Ingredients(
      text: 'plantain',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/plantains.jpg',
      hindiText: 'केला',
    ),
    Ingredients(
      text: 'plum',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/plum.jpg',
      hindiText: 'बेर',
    ),
    Ingredients(
      text: 'plum tomatoes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/plum-sauce.png',
      hindiText: 'टमाटर का क्रीम',
    ),
    Ingredients(
      text: 'poblano peppers',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/poblano-peppers.jpg',
      hindiText: 'पोबलानो मिर्च',
    ),
    Ingredients(
      text: 'polenta',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cornmeal.png',
      hindiText: 'मकई की खिचड़ी',
    ),
    Ingredients(
      text: 'polish sausage',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/smoked-sausage.png',
      hindiText: 'पोलिश पका मांस',
    ),
    Ingredients(
      text: 'pomegranate juice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pomegranate.jpg',
      hindiText: 'अनार का रस',
    ),
    Ingredients(
      text: 'pomegranate molasses',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pomegranate.jpg',
      hindiText: 'अनार का सिरा',
    ),
    Ingredients(
      text: 'pomegranate seeds',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pomegranate.jpg',
      hindiText: 'अनार के बीज',
    ),
    Ingredients(
      text: 'popcorn',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/popcorn-kernels.jpg',
      hindiText: 'मकई का लावा',
    ),
    Ingredients(
      text: 'poppy seeds',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/poppyseed.png',
      hindiText: 'खसखस',
    ),
    Ingredients(
      text: 'pork',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pork-tenderloin-raw.png',
      hindiText: 'सुअर का मांस',
    ),
    Ingredients(
      text: 'Pork & Beans',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pork-tenderloin-raw.png',
      hindiText: 'पोर्क एंड बीन्स',
    ),
    Ingredients(
      text: 'pork belly',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg',
      hindiText: 'सुअर के पेट का मांस',
    ),
    Ingredients(
      text: 'pork butt',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg',
      hindiText: 'सूअर का पिछवाड़ा',
    ),
    Ingredients(
      text: 'pork chops',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg',
      hindiText: 'सूअर मास की चॉप',
    ),
    Ingredients(
      text: 'pork links',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg',
      hindiText: 'पोर्क लिंक',
    ),
    Ingredients(
      text: 'pork loin chops',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg',
      hindiText: 'पोर्क लोन चॉप्स',
    ),
    Ingredients(
      text: 'pork loin roast',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg',
      hindiText: 'सूअर का मांस रोस्ट',
    ),
    Ingredients(
      text: 'pork roast',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg',
      hindiText: 'भुना हुआ सुअर का गोश्त',
    ),
    Ingredients(
      text: 'pork shoulder',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg',
      hindiText: 'सूअर का कंढा',
    ),
    Ingredients(
      text: 'pork tenderloin',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/pork-fat-or-lard.jpg',
      hindiText: 'सूअर का गोश्त',
    ),
    Ingredients(
      text: 'port',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/guinness.png',
      hindiText: 'बंदरगाह',
    ),
    Ingredients(
      text: 'portabella mushrooms',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/portabello-mushrooms.jpg',
      hindiText: 'पोर्टेबेला मशरूम',
    ),
    Ingredients(
      text: 'pot roast',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pot-roast.jpg',
      hindiText: 'पॉट रोस्ट',
    ),
    Ingredients(
      text: 'potato chips',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png',
      hindiText: 'आलू के चिप्स',
    ),
    Ingredients(
      text: 'potato starch',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png',
      hindiText: 'आलू स्टार्च',
    ),
    Ingredients(
      text: 'potatoes',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png',
      hindiText: 'आलू',
    ),
    Ingredients(
      text: 'poultry seasoning',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/seasoning.jpg',
      hindiText: 'पोल्ट्री मसाले',
    ),
    Ingredients(
      text: 'powdered sugar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/milk-powdered.jpg',
      hindiText: 'पिसी चीनी',
    ),
    Ingredients(
      text: 'pretzel sandwiches',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pretzels.jpg',
      hindiText: 'प्रेट्ज़ेल सैंडविच',
    ),
    Ingredients(
      text: 'processed american cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/american-cheese.jpg',
      hindiText: 'प्रोसेस्ड अमेरिकन चीज़',
    ),
    Ingredients(
      text: 'prosciutto',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/proscuitto.jpg',
      hindiText: 'Prosciutto',
    ),
    Ingredients(
      text: 'provolone cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/provolone-slices.jpg',
      hindiText: 'प्रोवोलोन चीज़',
    ),
    Ingredients(
      text: 'prunes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/prunes.jpg',
      hindiText: 'आलूबुखारा',
    ),
    Ingredients(
      text: 'puff pastry',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/puff-pastry.png',
      hindiText: 'पफ पेस्ट्री',
    ),
    Ingredients(
      text: 'pumpkin',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png',
      hindiText: 'कद्दू',
    ),
    Ingredients(
      text: 'pumpkin pie filling',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png',
      hindiText: 'कद्दू पाई भरने',
    ),
    Ingredients(
      text: 'pumpkin pie spice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png',
      hindiText: 'पंपकिन पी स्पाइस',
    ),
    Ingredients(
      text: 'pumpkin puree',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png',
      hindiText: 'कद्दू की प्यूरी',
    ),
    Ingredients(
      text: 'pumpkin seeds',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pumpkin.png',
      hindiText: 'कद्दू के बीज',
    ),
    Ingredients(
      text: 'queso fresco',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cheez-whiz.jpg',
      hindiText: 'क्वेसो फ्रेस्को',
    ),
    Ingredients(
      text: 'quick cooking oats',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/rolled-oats.jpg',
      hindiText: 'क्विक कुकिंग ओट्स',
    ),
    Ingredients(
      text: 'quinoa',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/uncooked-quinoa.png',
      hindiText: 'Quinoa',
    ),
    Ingredients(
      text: 'quinoa flour',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/uncooked-quinoa.png',
      hindiText: 'क्विनोआ आटा',
    ),
    Ingredients(
      text: 'radicchio',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/radicchio.jpg',
      hindiText: 'Radicchio',
    ),
    Ingredients(
      text: 'radishes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/radishes.jpg',
      hindiText: 'मूली',
    ),
    Ingredients(
      text: 'raisins',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/raisins.jpg',
      hindiText: 'किशमिश',
    ),
    Ingredients(
      text: 'ramen noodles',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ramen.jpg',
      hindiText: 'रमेन नूडल्स',
    ),
    Ingredients(
      text: 'ranch dressing',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/ranch-dressing.jpg',
      hindiText: 'खास तरह की सलाद ड्रेसिंग',
    ),
    Ingredients(
      text: 'ranch dressing mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/ranch-dressing.jpg',
      hindiText: 'रंच ड्रेसिंग मिक्स',
    ),
    Ingredients(
      text: 'raspberries',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/raspberries.jpg',
      hindiText: 'रसभरी',
    ),
    Ingredients(
      text: 'raspberry jam',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/raspberries.jpg',
      hindiText: 'रास्पबेरी जाम',
    ),
    Ingredients(
      text: 'raw cashews',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cashews.jpg',
      hindiText: 'कच्चे काजू',
    ),
    Ingredients(
      text: 'raw shrimp',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/raw-brown-sugar.png',
      hindiText: 'कच्चा झिंगा',
    ),
    Ingredients(
      text: 'ready-to-serve Asian fried rice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/pie-crust.jpg',
      hindiText: 'रेडी-टू-सर्व एशियन फ्राइड राइस',
    ),
    Ingredients(
      text: 'real bacon recipe pieces',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/bacon-bits.jpg',
      hindiText: 'असली बेकन नुस्खा टुकड़े',
    ),
    Ingredients(
      text: 'red apples',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/red-delicious-apples.png',
      hindiText: 'लाल सेब',
    ),
    Ingredients(
      text: 'red bell peppers',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beets.jpg',
      hindiText: 'लाल शिमला मिर्च',
    ),
    Ingredients(
      text: 'red cabbage',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg',
      hindiText: 'लाल पत्ता गोभी',
    ),
    Ingredients(
      text: 'red chilli',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg',
      hindiText: 'लाल मिर्च',
    ),
    Ingredients(
      text: 'red delicious apples',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/red-delicious-apples.png',
      hindiText: 'लाल स्वादिष्ट सेब',
    ),
    Ingredients(
      text: 'red food coloring',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/food-coloring.png',
      hindiText: 'रेड फूड कलरिंग',
    ),
    Ingredients(
      text: 'red grapefruit juice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg',
      hindiText: 'लाल अंगूर का रस',
    ),
    Ingredients(
      text: 'red grapes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-grapes.jpg',
      hindiText: 'लाल अंगूर',
    ),
    Ingredients(
      text: 'red kidney beans',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/kidney-beans.jpg',
      hindiText: 'राजमा',
    ),
    Ingredients(
      text: 'red lentils',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/red-lentils.png',
      hindiText: 'लाल दाल',
    ),
    Ingredients(
      text: 'red onion',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-onion.png',
      hindiText: 'लाल प्याज',
    ),
    Ingredients(
      text: 'red pepper flakes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-plum.png',
      hindiText: 'रेड पेपर फ्लेक्स',
    ),
    Ingredients(
      text: 'red pepper powder',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-plum.png',
      hindiText: 'लाल मिर्च पाउडर',
    ),
    Ingredients(
      text: 'red potatoes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-plum.png',
      hindiText: 'लाल आलू',
    ),
    Ingredients(
      text: 'red velvet cookie',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/red-wine-vinegar.jpg',
      hindiText: 'रेड वेलवेट कुकी',
    ),
    Ingredients(
      text: 'red wine',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg',
      hindiText: 'लाल शराब',
    ),
    Ingredients(
      text: 'red wine vinegar',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg',
      hindiText: 'लाल शराब सिरका',
    ),
    Ingredients(
      text: 'reduced fat shredded cheddar cheese',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/mayonnaise.png',
      hindiText: 'चर्बी घटाया चेडर चीज़',
    ),
    Ingredients(
      text: 'refried beans',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png',
      hindiText: 'दोबारा तले गए सेम',
    ),
    Ingredients(
      text: 'refrigerated crescent rolls',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png',
      hindiText: 'प्रशीतित अर्धचन्द्राकार रोल',
    ),
    Ingredients(
      text: 'refrigerated pizza dough',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png',
      hindiText: 'प्रशीतित पिज्जा आटा',
    ),
    Ingredients(
      text: 'refrigerated sugar cookie dough',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/refried-beans.png',
      hindiText: 'प्रशीतित चीनी कुकी आटा',
    ),
    Ingredients(
      text: 'rhubarb',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/rhubarb.jpg',
      hindiText: 'एक प्रकार का फल',
    ),
    Ingredients(
      text: 'rib tips',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/no.jpg',
      hindiText: 'रिब टिप्स',
    ),
    Ingredients(
      text: 'rice',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/uncooked-white-rice.png',
      hindiText: 'चावल',
    ),
    Ingredients(
      text: 'rice flour',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg',
      hindiText: 'चावल का आटा',
    ),
    Ingredients(
      text: 'rice krispies cereal',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg',
      hindiText: 'चावल क्रिस्पी अनाज',
    ),
    Ingredients(
      text: 'rice milk',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg',
      hindiText: 'चावल से बना दूध',
    ),
    Ingredients(
      text: 'rice noodles',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg',
      hindiText: 'चावल के नूडल्स',
    ),
    Ingredients(
      text: 'rice paper',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg',
      hindiText: 'चावल के कागज',
    ),
    Ingredients(
      text: 'rice syrup',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg',
      hindiText: 'राइस सिरप',
    ),
    Ingredients(
      text: 'rice vinegar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg',
      hindiText: 'चावल सिरका',
    ),
    Ingredients(
      text: 'rice wine',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg',
      hindiText: 'राइस वाइन',
    ),
    Ingredients(
      text: 'ricotta salata',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ricotta.png',
      hindiText: 'रिकोटा सलटा',
    ),
    Ingredients(
      text: 'ritz crackers',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/crackers.jpg',
      hindiText: 'रिट्ज पटाखे',
    ),
    Ingredients(
      text: 'roast beef',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg',
      hindiText: 'भुना हुआ गायका मांस',
    ),
    Ingredients(
      text: 'roasted chicken',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg',
      hindiText: 'भुना मुर्गा',
    ),
    Ingredients(
      text: 'roasted nuts',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg',
      hindiText: 'भुना हुआ नट्स',
    ),
    Ingredients(
      text: 'roasted peanuts',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg',
      hindiText: 'भुनी हुई मूंगफली',
    ),
    Ingredients(
      text: 'roasted red peppers',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/roast-beef-slices.jpg',
      hindiText: 'भुनी लाल मिर्च',
    ),
    Ingredients(
      text: 'roma tomatoes',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/roma-tomatoes.png',
      hindiText: 'रोमा टमाटर',
    ),
    Ingredients(
      text: 'romaine lettuce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/romaine.jpg',
      hindiText: 'रोमेन सलाद',
    ),
    Ingredients(
      text: 'root vegetables',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg',
      hindiText: 'जड़ खाने वाली सब्जियां',
    ),
    Ingredients(
      text: 'rosemary',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/rosemary.jpg',
      hindiText: 'रोजमैरी',
    ),
    Ingredients(
      text: 'rotisserie chicken',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/rotisserie-chicken.png',
      hindiText: 'भुना हुआ मुर्गा',
    ),
    Ingredients(
      text: 'round steak',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/round-steak.jpg',
      hindiText: 'राउंड स्टेक',
    ),
    Ingredients(
      text: 'rub',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png',
      hindiText: 'रगड़',
    ),
    Ingredients(
      text: 'rum extract',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vanilla-extract.jpg',
      hindiText: 'रम निकालें',
    ),
    Ingredients(
      text: 'runny honey',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/honey.png',
      hindiText: 'तरल शहद',
    ),
    Ingredients(
      text: 'russet potatoes',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/russet-or-idaho-potatoes.png',
      hindiText: 'रसेट आलू',
    ),
    Ingredients(
      text: 'rutabaga',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/rutabaga.jpg',
      hindiText: 'Rutabaga',
    ),
    Ingredients(
      text: 'rye bread',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/beer.jpg',
      hindiText: 'राई की रोटी',
    ),
    Ingredients(
      text: 'rye meal',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-flour.jpg',
      hindiText: 'राई खाना',
    ),
    Ingredients(
      text: 'saffron threads',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/saffron.jpg',
      hindiText: 'केसर के धागे',
    ),
    Ingredients(
      text: 'sage',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/fresh-sage.png',
      hindiText: 'साधू',
    ),
    Ingredients(
      text: 'sage leaves',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/fresh-sage.png',
      hindiText: 'एक खास पेड़ के पत्ते',
    ),
    Ingredients(
      text: 'salad dressing',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-greens-or-mesclun.jpg',
      hindiText: 'चटनी',
    ),
    Ingredients(
      text: 'salami',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salami.jpg',
      hindiText: 'सलामी',
    ),
    Ingredients(
      text: 'salmon fillet',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salmon.png',
      hindiText: 'सामन पट्टिका',
    ),
    Ingredients(
      text: 'salsa',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salsa.png',
      hindiText: 'साल्सा',
    ),
    Ingredients(
      text: 'salsa verde',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salsa.png',
      hindiText: 'साल्सा वर्डे',
    ),
    Ingredients(
      text: 'salt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/salt.jpg',
      hindiText: 'नमक',
    ),
    Ingredients(
      text: 'salt and pepper',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/cod-fillet.jpg',
      hindiText: 'नमक और मिर्च',
    ),
    Ingredients(
      text: 'salted butter',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/butter.jpg',
      hindiText: 'नमकीन मक्खन',
    ),
    Ingredients(
      text: 'saltine crackers',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/saltine-crackers.jpg',
      hindiText: 'सैलटाइन पटाखे',
    ),
    Ingredients(
      text: 'sandwich bun',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/kaiser-roll.png',
      hindiText: 'सैंडविच बन',
    ),
    Ingredients(
      text: 'sauerkraut',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/sour-cream.jpg',
      hindiText: 'खट्टी गोभी',
    ),
    Ingredients(
      text: 'sausage',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/raw-pork-sausage.png',
      hindiText: 'सॉस',
    ),
    Ingredients(
      text: 'sausage links',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/raw-pork-sausage.png',
      hindiText: 'सॉसेज लिंक',
    ),
    Ingredients(
      text: 'scotch bonnet chili',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whiskey-bottle.jpg',
      hindiText: 'स्कॉच बोनट चिली',
    ),
    Ingredients(
      text: 'sea salt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png',
      hindiText: 'समुद्री नमक',
    ),
    Ingredients(
      text: 'sea scallops',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png',
      hindiText: 'समुद्री घोंघा',
    ),
    Ingredients(
      text: 'seasoned bread crumbs',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png',
      hindiText: 'अनुभवी ब्रेड क्रम्ब्स',
    ),
    Ingredients(
      text: 'seasoned rice vinegar',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png',
      hindiText: 'अनुभवी चावल का सिरका',
    ),
    Ingredients(
      text: 'seasoned salt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png',
      hindiText: 'मसालेदार नमक',
    ),
    Ingredients(
      text: 'seasoning blend',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/seasoning.png',
      hindiText: 'मसाला मिश्रण',
    ),
    Ingredients(
      text: 'seeds',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sunflower-seeds.jpg',
      hindiText: 'बीज',
    ),
    Ingredients(
      text: 'self-rising flour',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png',
      hindiText: 'स्वंय बढ़ता आटा',
    ),
    Ingredients(
      text: 'semi sweet chocolate chips',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/chocolate-chips.jpg',
      hindiText: 'कम मीठा चॉकलेट चिप्स',
    ),
    Ingredients(
      text: 'serrano chile',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/proscuitto.jpg',
      hindiText: 'सेरानो चिली',
    ),
    Ingredients(
      text: 'sesame oil',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sesame-seeds.png',
      hindiText: 'तिल का तेल',
    ),
    Ingredients(
      text: 'sesame seed hamburger buns',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sesame-seeds.png',
      hindiText: 'तिल के बीज हैमबर्गर बन्स',
    ),
    Ingredients(
      text: 'sesame seeds',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sesame-seeds.png',
      hindiText: 'तिल के बीज',
    ),
    Ingredients(
      text: 'shallot',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/shallots.jpg',
      hindiText: 'छोटे प्याज़',
    ),
    Ingredients(
      text: 'sharp cheddar cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'तेज चेडर चीज़',
    ),
    Ingredients(
      text: 'sheeps milk cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'भेड़ का दूध पनीर',
    ),
    Ingredients(
      text: 'shells',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/shell-pasta.jpg',
      hindiText: 'शेल',
    ),
    Ingredients(
      text: 'sherry',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dry-sherry.png',
      hindiText: 'स्पेनिश सफेद मदिरा',
    ),
    Ingredients(
      text: 'sherry',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dry-sherry.png',
      hindiText: 'स्पेनिश सफेद मदिरा',
    ),
    Ingredients(
      text: 'sherry vinegar',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dry-sherry.png',
      hindiText: 'शेरी विनेगर',
    ),
    Ingredients(
      text: 'shiitake mushroom caps',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/shiitake-mushrooms.png',
      hindiText: 'शिटेक मशरूम कैप',
    ),
    Ingredients(
      text: 'short grain rice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg',
      hindiText: 'शॉर्ट ग्रेन राइस',
    ),
    Ingredients(
      text: 'short pasta',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg',
      hindiText: 'छोटा पास्ता',
    ),
    Ingredients(
      text: 'short ribs',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg',
      hindiText: 'छोटी पसलियाँ',
    ),
    Ingredients(
      text: 'shortbread cookies',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg',
      hindiText: 'कचौड़ी कुकीज़',
    ),
    Ingredients(
      text: 'shortcrust pastry',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg',
      hindiText: 'छोटी परत वाली पेस्ट्री',
    ),
    Ingredients(
      text: 'shortening',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/shortening.jpg',
      hindiText: 'कमी',
    ),
    Ingredients(
      text: 'shredded cheddar cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'कटा हुआ चेडर पनीर',
    ),
    Ingredients(
      text: 'shredded cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'कटा हुआ पनीर',
    ),
    Ingredients(
      text: 'shredded chicken',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'कटा हुआ मुर्गा',
    ),
    Ingredients(
      text: 'shredded coconut',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'कटा हुआ नारियल',
    ),
    Ingredients(
      text: 'shredded mexican cheese blend',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'कटा हुआ मैक्सिकन पनीर मिश्रण',
    ),
    Ingredients(
      text: 'shredded mexican cheese blend',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'कटा हुआ मैक्सिकन पनीर मिश्रण',
    ),
    Ingredients(
      text: 'shredded mozzarella',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'कटा हुआ मोज़ेरेला',
    ),
    Ingredients(
      text: 'silken tofu',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tofu.png',
      hindiText: 'रेशमी टोफू',
    ),
    Ingredients(
      text: 'sirloin steak',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sirloin-steak.png',
      hindiText: 'सर्लोइन स्टेक',
    ),
    Ingredients(
      text: 'skim milk ricotta',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg',
      hindiText: 'स्किम मिल्क रिकोटा',
    ),
    Ingredients(
      text: 'skim vanilla greek yogurt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.jpg',
      hindiText: 'स्किम वेनिला ग्रीक दही',
    ),
    Ingredients(
      text: 'skin-on bone-in chicken leg quarters',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/chicken-drumsticks.jpg',
      hindiText: 'त्वचा पर हड्डी में चिकन पैर क्वार्टर',
    ),
    Ingredients(
      text: 'skinless boneless chicken breast halves',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/chicken-thighs.png',
      hindiText: 'स्किनलेस बोनलेस चिकन ब्रेस्ट हाफ',
    ),
    Ingredients(
      text: 'skinless boneless chicken thighs',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/chicken-thighs.png',
      hindiText: 'स्किनलेस बोनलेस चिकन जांघ्स',
    ),
    Ingredients(
      text: 'skinned black gram',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/urad-dal.png',
      hindiText: 'चमड़ी वाले काले चने',
    ),
    Ingredients(
      text: 'slaw dressing',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coleslaw.png',
      hindiText: 'स्लाव ड्रेसिंग',
    ),
    Ingredients(
      text: 'slaw mix',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/coleslaw.png',
      hindiText: 'स्लाव मिक्स',
    ),
    Ingredients(
      text: 'slivered almonds',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/almonds-slivered.png',
      hindiText: 'चांदी बादाम',
    ),
    Ingredients(
      text: 'smoked paprika',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg',
      hindiText: 'धूम्र लाल शिमला मिर्च',
    ),
    Ingredients(
      text: 'smoked salmon',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg',
      hindiText: 'स्मोक्ड सालमन',
    ),
    Ingredients(
      text: 'smoked sausage',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/diced-ham.jpg',
      hindiText: 'भुनी हुई सॉसेज',
    ),
    Ingredients(
      text: 'smooth peanut butter',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/peanut-butter.png',
      hindiText: 'चिकनी मूंगफली का मक्खन',
    ),
    Ingredients(
      text: 'snapper fillets',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/snapper.jpg',
      hindiText: 'स्नैपर फिल्लेट्स',
    ),
    Ingredients(
      text: 'snow peas',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/snow-peas.jpg',
      hindiText: 'बर्फ मटर',
    ),
    Ingredients(
      text: 'soda water',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sparkling-water.png',
      hindiText: 'सोडा - वाटर',
    ),
    Ingredients(
      text: 'sour cream',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/milk.png',
      hindiText: 'खट्टी मलाई',
    ),
    Ingredients(
      text: 'sourdough bowl',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sourdough-bread.jpg',
      hindiText: 'खट्टा कटोरा',
    ),
    Ingredients(
      text: 'sourdough bread',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sourdough-bread.jpg',
      hindiText: 'खमीरी रोटी',
    ),
    Ingredients(
      text: 'soy milk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/soy-milk.jpg',
      hindiText: 'सोया दूध',
    ),
    Ingredients(
      text: 'soy protein powder',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/okara.png',
      hindiText: 'सोया प्रोटीन पाउडर',
    ),
    Ingredients(
      text: 'soy sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg',
      hindiText: 'सोया सॉस',
    ),
    Ingredients(
      text: 'spaghetti',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/spaghetti.jpg',
      hindiText: 'स्पघेटी',
    ),
    Ingredients(
      text: 'spaghetti squash',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/spaghetti.jpg',
      hindiText: 'स्पेगती स्क्वाश',
    ),
    Ingredients(
      text: 'sparkling wine',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/champagne.png',
      hindiText: 'स्पार्कलिंग वाइन',
    ),
    Ingredients(
      text: 'spelt flour',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/farro-or-spelt.jpg',
      hindiText: 'आटा भिखेरना',
    ),
    Ingredients(
      text: 'spicy brown mustard',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-chili.jpg',
      hindiText: 'मसालेदार भूरी सरसों',
    ),
    Ingredients(
      text: 'spinach',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/spinach.jpg',
      hindiText: 'पालक',
    ),
    Ingredients(
      text: 'sprite',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/soda-can.jpg',
      hindiText: 'स्प्राइट',
    ),
    Ingredients(
      text: 'sprouts',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/alfalfa-sprouts.png',
      hindiText: 'अंकुरित',
    ),
    Ingredients(
      text: 'squash',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/butternut-squash.jpg',
      hindiText: 'स्क्वाश',
    ),
    Ingredients(
      text: 'sriracha sauce',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/hot-sauce-or-tabasco.png',
      hindiText: 'Sriracha सॉस',
    ),
    Ingredients(
      text: 'steaks',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/ribeye-raw.jpg',
      hindiText: 'स्टेक',
    ),
    Ingredients(
      text: 'steel cut oats',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/steel-cut-oats.png',
      hindiText: 'स्टील कट ओट्स',
    ),
    Ingredients(
      text: 'stevia',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/stevia.png',
      hindiText: 'स्टेविया',
    ),
    Ingredients(
      text: 'stew meat',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/beef-cubes-raw.png',
      hindiText: 'मांस का स्टू',
    ),
    Ingredients(
      text: 'stew vegetables',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/beef-cubes-raw.png',
      hindiText: 'स्टू सब्जियां',
    ),
    Ingredients(
      text: 'stock',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/chicken-broth.png',
      hindiText: 'भण्डार',
    ),
    Ingredients(
      text: 'store-bought phyllo',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/filo-dough.png',
      hindiText: 'स्टोर-खरीदा फ़ाइलो',
    ),
    Ingredients(
      text: 'stout',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/guinness.png',
      hindiText: 'मोटा',
    ),
    Ingredients(
      text: 'strawberries',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/strawberries.png',
      hindiText: 'स्ट्रॉबेरीज',
    ),
    Ingredients(
      text: 'strawberry jam',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/strawberries.png',
      hindiText: 'स्ट्रॉबेरी जैम',
    ),
    Ingredients(
      text: 'strawberry jello',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/strawberries.png',
      hindiText: 'स्ट्रॉबेरी जेलो',
    ),
    Ingredients(
      text: 'stuffing',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/stuffing-mix.png',
      hindiText: 'भराई',
    ),
    Ingredients(
      text: 'stuffing mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/stuffing-mix.png',
      hindiText: 'भराई मिश्रण',
    ),
    Ingredients(
      text: 'sub rolls',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/french-rolls.jpg',
      hindiText: 'सब रोल',
    ),
    Ingredients(
      text: 'sugar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png',
      hindiText: 'चीनी',
    ),
    Ingredients(
      text: 'sugar snap peas',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png',
      hindiText: 'मटर',
    ),
    Ingredients(
      text: 'sugar syrup',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sugar-in-bowl.png',
      hindiText: 'चाशनी',
    ),
    Ingredients(
      text: 'sukrin sweetener',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sugar-substitute.jpg',
      hindiText: 'सुकरीन स्वीटनर',
    ),
    Ingredients(
      text: 'summer savory',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/yellow-squash.jpg',
      hindiText: 'ग्रीष्म जड़ी - बूटी',
    ),
    Ingredients(
      text: 'summer squash',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/yellow-squash.jpg',
      hindiText: 'गर्मी का शरबत',
    ),
    Ingredients(
      text: 'sunflower oil',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg',
      hindiText: 'सूरजमुखी का तेल',
    ),
    Ingredients(
      text: 'sunflower seeds',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg',
      hindiText: 'सूरजमुखी के बीज',
    ),
    Ingredients(
      text: 'sweet chilli sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'मीठी मिर्च की चटनी',
    ),
    Ingredients(
      text: 'sweet onion',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'मीठा प्याज',
    ),
    Ingredients(
      text: 'sweet paprika',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'प्यारी पप्रिका',
    ),
    Ingredients(
      text: 'sweet pickle juice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'मीठा अचार का रस',
    ),
    Ingredients(
      text: 'sweet pickle relish',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'मीठे अचार का स्वाद',
    ),
    Ingredients(
      text: 'sweet potato',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'शकरकंद',
    ),
    Ingredients(
      text: 'sweet tea',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'मीठी चाय',
    ),
    Ingredients(
      text: 'sweetened coconut',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'मीठा नारियल',
    ),
    Ingredients(
      text: 'sweetened condensed milk',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'मीठा गाढ़ा दूध',
    ),
    Ingredients(
      text: 'sweetened shredded coconut',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/corn.png',
      hindiText: 'मीठा कटा नारियल',
    ),
    Ingredients(
      text: 'swiss chard',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/swiss-chard.jpg',
      hindiText: 'स्विस कार्ड',
    ),
    Ingredients(
      text: 'swiss cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/swiss-chard.jpg',
      hindiText: 'स्विस पनीर',
    ),
    Ingredients(
      text: 'taco seasoning mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/taco-shells.jpg',
      hindiText: 'टैको सीज़निंग मिक्स',
    ),
    Ingredients(
      text: 'taco shells',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/taco-shells.jpg',
      hindiText: 'टैको के गोले',
    ),
    Ingredients(
      text: 'tahini',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/tahini-paste.png',
      hindiText: 'ताहिनी',
    ),
    Ingredients(
      text: 'tamari',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tamarind.png',
      hindiText: 'Tamari',
    ),
    Ingredients(
      text: 'tapioca flour',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/sago-pearls.png',
      hindiText: 'टैपिओका आटा',
    ),
    Ingredients(
      text: 'tarragon',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tarragon.jpg',
      hindiText: 'टैरागोन',
    ),
    Ingredients(
      text: 'tart apple',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/grannysmith-apple.png',
      hindiText: 'तीखा सेब',
    ),
    Ingredients(
      text: 'tea bags',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tea-bags.jpg',
      hindiText: 'चाय बैग',
    ),
    Ingredients(
      text: 'tequila',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tequila.png',
      hindiText: 'टकीला',
    ),
    Ingredients(
      text: 'teriyaki sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg',
      hindiText: 'तेरियाकी सॉस',
    ),
    Ingredients(
      text: 'thai basil',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/lemon-basil.jpg',
      hindiText: 'थाई तुलसी',
    ),
    Ingredients(
      text: 'thai chiles',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/lemon-basil.jpg',
      hindiText: 'थाई चिल्स',
    ),
    Ingredients(
      text: 'thai red curry paste',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/lemon-basil.jpg',
      hindiText: 'थाई लाल करी पेस्ट',
    ),
    Ingredients(
      text: 'thick-cut bacon',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/raw-bacon.png',
      hindiText: 'सूअर मांस के मोटे टुकड़े',
    ),
    Ingredients(
      text: 'tilapia fillets',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/raw-tilapia.jpg',
      hindiText: 'तिलापिया fillets',
    ),
    Ingredients(
      text: 'toast',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/toast.jpg',
      hindiText: 'टोस्ट',
    ),
    Ingredients(
      text: 'toffee bits',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/toffee-pieces.jpg',
      hindiText: 'टॉफी बिट्स',
    ),
    Ingredients(
      text: 'tofu',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/beancurd-sheets.jpg',
      hindiText: 'टोफू',
    ),
    Ingredients(
      text: 'tomatillos',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png',
      hindiText: 'tomatillos',
    ),
    Ingredients(
      text: 'tomato juice',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png',
      hindiText: 'टमाटर का रस',
    ),
    Ingredients(
      text: 'tomato paste',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png',
      hindiText: 'टमाटर का पेस्ट',
    ),
    Ingredients(
      text: 'tomato puree',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png',
      hindiText: 'टमाटर का भर्ता',
    ),
    Ingredients(
      text: 'tomato sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png',
      hindiText: 'टमाटर की चटनी',
    ),
    Ingredients(
      text: 'tomato soup',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png',
      hindiText: 'टमाटर सूप',
    ),
    Ingredients(
      text: 'tomatoes',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/tomato.png',
      hindiText: 'टमाटर',
    ),
    Ingredients(
      text: 'top blade steak',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/blade-steak.png',
      hindiText: 'शीर्ष ब्लेड स्टेक',
    ),
    Ingredients(
      text: 'top round steak',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/round-steak.jpg',
      hindiText: 'टॉप राउंड स्टेक',
    ),
    Ingredients(
      text: 'Top Sirloin',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/top-sirloin-steak.jpg',
      hindiText: 'जानवर के ऊपरी पुट्ठे का मांस',
    ),
    Ingredients(
      text: 'tortilla',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/flour-tortilla.jpg',
      hindiText: 'टॉर्टिला',
    ),
    Ingredients(
      text: 'tortilla chips',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/flour-tortilla.jpg',
      hindiText: 'टॉरटिल्ला चिप्स',
    ),
    Ingredients(
      text: 'triple sec',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-rum.jpg',
      hindiText: 'ट्रिपल सेक',
    ),
    Ingredients(
      text: 'truffle oil',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/truffle-oil.jpg',
      hindiText: 'कुकुरमुत्ता का तेल',
    ),
    Ingredients(
      text: 'tuna',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/canned-tuna.png',
      hindiText: 'टूना',
    ),
    Ingredients(
      text: 'turbinado sugar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/raw-brown-sugar.png',
      hindiText: 'तुर्बिनाडो शक्कर',
    ),
    Ingredients(
      text: 'turkey',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/turkey-raw-whole.jpg',
      hindiText: 'तुर्की',
    ),
    Ingredients(
      text: 'turkey breast',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/turkey-raw-whole.jpg',
      hindiText: 'टर्की ब्रेस्ट',
    ),
    Ingredients(
      text: 'turkey kielbasa',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/turkey-raw-whole.jpg',
      hindiText: 'टर्की कीलबास',
    ),
    Ingredients(
      text: 'turmeric',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/turmeric.jpg',
      hindiText: 'हल्दी',
    ),
    Ingredients(
      text: 'turnips',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/turnips.png',
      hindiText: 'शलजम',
    ),
    Ingredients(
      text: 'unbleached flour',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/flour.png',
      hindiText: 'बिना साफ किया हुआ आटा',
    ),
    Ingredients(
      text: 'unsalted butter',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg',
      hindiText: 'बिना नमक का मक्खन',
    ),
    Ingredients(
      text: 'unsmoked back bacon',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/canadian-bacon.png',
      hindiText: 'अनसोल्ड बैक बेकन',
    ),
    Ingredients(
      text: 'unsweetened applesauce',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png',
      hindiText: 'बिना लाइसेंस के सेब',
    ),
    Ingredients(
      text: 'unsweetened coconut milk',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png',
      hindiText: 'बिना पका हुआ नारियल का दूध',
    ),
    Ingredients(
      text: 'unsweetened shredded coconut',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cocoa-powder.png',
      hindiText: 'बिना कटा हुआ नारियल',
    ),
    Ingredients(
      text: 'vanilla bean',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg',
      hindiText: 'वनीला बीन',
    ),
    Ingredients(
      text: 'vanilla bean paste',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg',
      hindiText: 'वेनिला सेम पेस्ट',
    ),
    Ingredients(
      text: 'vanilla essence',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg',
      hindiText: 'वनीला सुगंध',
    ),
    Ingredients(
      text: 'vanilla extract',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg',
      hindiText: 'वेनीला सत्र',
    ),
    Ingredients(
      text: 'vanilla frosting',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg',
      hindiText: 'वेनिला फ्रॉस्टिंग',
    ),
    Ingredients(
      text: 'vanilla instant pudding mix',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg',
      hindiText: 'वेनिला इंस्टेंट पुडिंग मिक्स',
    ),
    Ingredients(
      text: 'vanilla protein powder',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg',
      hindiText: 'वेनिला प्रोटीन पाउडर',
    ),
    Ingredients(
      text: 'vanilla yogurt',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vanilla.jpg',
      hindiText: 'वनीला दही',
    ),
    Ingredients(
      text: 'vegan cheese',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'शाकाहारी पनीर',
    ),
    Ingredients(
      text: 'vegan chocolate chips',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'शाकाहारी चॉकलेट चिप्स',
    ),
    Ingredients(
      text: 'vegan margarine',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.png',
      hindiText: 'शाकाहारी मार्जरीन',
    ),
    Ingredients(
      text: 'vegetable broth',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-vegetables.png',
      hindiText: 'सब्जी का झोल',
    ),
    Ingredients(
      text: 'vegetable oil',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-vegetables.png',
      hindiText: 'वनस्पति तेल',
    ),
    Ingredients(
      text: 'vegetarian bacon',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/mixed-vegetables.png',
      hindiText: 'शाकाहारी बेकन',
    ),
    Ingredients(
      text: 'vermouth',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vermouth.jpg',
      hindiText: 'वरमाउथ',
    ),
    Ingredients(
      text: 'vinaigrette',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vinaigrette.jpg',
      hindiText: 'विनाईग्रेटे',
    ),
    Ingredients(
      text: 'vinegar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/vinegar-(white).jpg',
      hindiText: 'सिरका',
    ),
    Ingredients(
      text: 'vodka',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/vodka.jpg',
      hindiText: 'वोडका',
    ),
    Ingredients(
      text: 'walnuts',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/walnuts.jpg',
      hindiText: 'अखरोट',
    ),
    Ingredients(
      text: 'water',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png',
      hindiText: 'पानी',
    ),
    Ingredients(
      text: 'water chestnuts',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png',
      hindiText: 'सिंघाड़ा',
    ),
    Ingredients(
      text: 'water-packed tuna',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png',
      hindiText: 'पानी से भरे टूना',
    ),
    Ingredients(
      text: 'watercress',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png',
      hindiText: 'Watercress',
    ),
    Ingredients(
      text: 'watermelon chunks',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/water.png',
      hindiText: 'तरबूज के टुकड़े',
    ),
    Ingredients(
      text: 'wheat bran',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/wheat-germ.png',
      hindiText: 'गेहु का भूसा',
    ),
    Ingredients(
      text: 'wheat germ',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/wheat-germ.png',
      hindiText: 'गेहूं के कीटाणु',
    ),
    Ingredients(
      text: 'whipped cream',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whipped-cream.jpg',
      hindiText: 'फेटी हुई मलाई',
    ),
    Ingredients(
      text: 'whipped topping',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whipped-cream.jpg',
      hindiText: 'टॉपिंग मार पड़ी है',
    ),
    Ingredients(
      text: 'whipping cream',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whipped-cream.jpg',
      hindiText: 'कम वसायुक्त मलाई',
    ),
    Ingredients(
      text: 'whiskey',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/whiskey-bottle.jpg',
      hindiText: 'व्हिस्की',
    ),
    Ingredients(
      text: 'white balsamic vinegar',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg',
      hindiText: 'सफेद बाल्‍सम सिरका',
    ),
    Ingredients(
      text: 'white bread',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg',
      hindiText: 'सफ़ेद ब्रेड',
    ),
    Ingredients(
      text: 'white cake mix',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg',
      hindiText: 'सफेद केक मिश्रण',
    ),
    Ingredients(
      text: 'white cheddar',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg',
      hindiText: 'सफेद चेडर',
    ),
    Ingredients(
      text: 'white chocolate',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg',
      hindiText: 'सफेद चॉकलेट',
    ),
    Ingredients(
      text: 'white chocolate chips',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg',
      hindiText: 'व्हाइट चॉकलेट चिप्स',
    ),
    Ingredients(
      text: 'white onion',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg',
      hindiText: 'सफेद प्याज',
    ),
    Ingredients(
      text: 'white pepper',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg',
      hindiText: 'सफ़ेद मिर्च',
    ),
    Ingredients(
      text: 'white whole wheat flour',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg',
      hindiText: 'सफेद गेहूं का आटा',
    ),
    Ingredients(
      text: 'white wine',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg',
      hindiText: 'सफ़ेद वाइन',
    ),
    Ingredients(
      text: 'white wine vinegar',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/white-wine.jpg',
      hindiText: 'सफेद वाइन का सिरका',
    ),
    Ingredients(
      text: 'whole allspice berries',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png',
      hindiText: 'साबुत आलूबुखारा जामुन',
    ),
    Ingredients(
      text: 'whole chicken',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png',
      hindiText: 'पूरा मुर्ग',
    ),
    Ingredients(
      text: 'whole coriander seeds',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png',
      hindiText: 'साबुत धनिया के बीज',
    ),
    Ingredients(
      text: 'whole cranberry sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png',
      hindiText: 'पूरी क्रैनबेरी सॉस',
    ),
    Ingredients(
      text: 'whole kernel corn',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png',
      hindiText: 'पूरे कर्नेल कॉर्न',
    ),
    Ingredients(
      text: 'whole star anise',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png',
      hindiText: 'पूरा सितारा अनीस',
    ),
    Ingredients(
      text: 'whole wheat bread',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png',
      hindiText: 'साबुत गेहूँ की ब्रेड',
    ),
    Ingredients(
      text: 'whole wheat flour',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png',
      hindiText: 'पूरे गेहूं का आटा',
    ),
    Ingredients(
      text: 'whole wheat tortillas',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png',
      hindiText: 'साबुत गेहूं की टर्रियां',
    ),
    Ingredients(
      text: 'whole-grain mustard',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/egg.png',
      hindiText: 'साबुत अनाज सरसों',
    ),
    Ingredients(
      text: 'wine',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/red-wine.jpg',
      hindiText: 'वाइन',
    ),
    Ingredients(
      text: 'wine vinegar',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/red-wine-vinegar.jpg',
      hindiText: 'वाइन सिरका',
    ),
    Ingredients(
      text: 'winter squash',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/butternut-squash.jpg',
      hindiText: 'कद्दू',
    ),
    Ingredients(
      text: 'won ton wraps',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/wonton-wrappers.jpg',
      hindiText: 'टन जीत गए',
    ),
    Ingredients(
      text: 'worcestershire sauce',
      imageUrl: 'http://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg',
      hindiText: 'वूस्टरशर सॉस',
    ),
    Ingredients(
      text: 'wraps',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/flour-tortilla.jpg',
      hindiText: 'Wraps',
    ),
    Ingredients(
      text: 'xanthan gum',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/white-powder.jpg',
      hindiText: 'जिंक गम',
    ),
    Ingredients(
      text: 'yeast',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/yeast-granules.jpg',
      hindiText: 'खमीर',
    ),
    Ingredients(
      text: 'yellow bell pepper',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png',
      hindiText: 'पीली बेल मिर्च',
    ),
    Ingredients(
      text: 'yellow cake mix',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png',
      hindiText: 'पीले केक मिश्रण',
    ),
    Ingredients(
      text: 'yellow onion',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/brown-onion.png',
      hindiText: 'पीले प्याज',
    ),
    Ingredients(
      text: 'yogurt',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/plain-yogurt.jpg',
      hindiText: 'दही',
    ),
    Ingredients(
      text: 'yukon gold potato',
      imageUrl:
          'http://spoonacular.com/cdn/ingredients_100x100/potatoes-yukon-gold.png',
      hindiText: 'युकॉन गोल्ड पोटैटो',
    ),
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

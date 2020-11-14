import 'package:cook_chef/Screens/AccountPage.dart';
import 'package:cook_chef/Screens/AccountSearchPage.dart';
import 'package:cook_chef/Screens/HomePage.dart';
import 'package:cook_chef/Screens/NotificationsPage.dart';
import 'package:cook_chef/Screens/RecipesPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* To remove the debug banner in the top right */
      debugShowCheckedModeBanner: false,

      /* Creating routes for different pages */
      routes: {
        HomePage.id: (context) => HomePage(),
        AccountSearchPage.id: (context) => AccountSearchPage(),
        RecipesPage.id: (context) => RecipesPage(),
        NotificationsPage.id: (context) => NotificationsPage(),
        AccountPage.id: (context) => AccountPage(),
      },

      /* Setting the initial route */
      initialRoute: HomePage.id,
    );
  }
}

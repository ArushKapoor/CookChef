import 'package:cook_chef/Screens/FeedPage.dart';
import 'package:cook_chef/Screens/Account/AccountPage.dart';
import 'package:cook_chef/Screens/Account/AccountSearchPage.dart';
import 'package:cook_chef/Screens/Recipe/IngredientsPage.dart';
import 'package:cook_chef/Screens/Recipe/SelectedIngredientsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  //NetworkingHelper networkingHelper = NetworkingHelper();

  final tabs = [
    FeedPage(),
    IngredientsPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    //networkingHelper.helper();
    return Scaffold(
      /* Setting up the app bar */
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('ChefGuru'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
        ),
        actions: <Widget>[
          if (currentIndex == 0)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.pushNamed(context, AccountSearchPage.id);
                },
              ),
            ),
          if (currentIndex == 1)
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SelectedIngredientsPage.id);
                  },
                  child: Text('Next'),
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: (currentIndex == 0)
                ? Icon(Icons.home)
                : SvgPicture.asset(
                    'assets/icons/home_outlined.svg',
                    height: 25,
                  ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/chef.jpeg',
              height: 22,
            ),
            label: 'Let\'s Cook',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),

      /* Creating Safe Area so that the content stays inside the screen */
      body: tabs[currentIndex],
    );
  }
}

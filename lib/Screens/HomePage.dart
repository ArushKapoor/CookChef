import 'package:cook_chef/Screens/FeedPage.dart';
import 'package:cook_chef/Screens/AccountPage.dart';
import 'package:cook_chef/Screens/AccountSearchPage.dart';
import 'package:cook_chef/Screens/NotificationsPage.dart';
import 'package:cook_chef/Screens/RecipesPage.dart';
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
    RecipesPage(),
    NotificationsPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    //networkingHelper.helper();
    return Scaffold(
      /* Setting up the app bar */
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('CookChef'),
        centerTitle: true,
        actions: <Widget>[
          if (currentIndex == 0)
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, AccountSearchPage.id);
              },
            )
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
            icon: (currentIndex != 2)
                ? Icon(Icons.notifications_none)
                : Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '',
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

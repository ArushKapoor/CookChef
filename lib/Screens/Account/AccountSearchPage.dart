import 'package:cook_chef/Screens/Account/AccountPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../NotificationsPage.dart';
import '../Recipe/IncredientsPage.dart';

class AccountSearchPage extends StatefulWidget {
  static const String id = 'account_search_page';
  @override
  _AccountSearchPageState createState() => _AccountSearchPageState();
}

class _AccountSearchPageState extends State<AccountSearchPage> {
  int currentIndex = 0;
  bool hasTapped = false;

  final tabs = [
    AccountSearchPage(),
    RecipesPage(),
    NotificationsPage(),
    AccountPage(),
  ];

  Container _recentAccount({String id, String name}) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.account_circle),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(id),
                Text(name),
              ],
            ),
          ),
          Icon(Icons.close),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:
            (!hasTapped || currentIndex == 0) ? true : false,
        centerTitle: (!hasTapped || currentIndex == 0) ? false : true,
        title: (!hasTapped || currentIndex == 0)
            ? Row(
                children: <Widget>[
                  Icon(Icons.search),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Search'),
                ],
              )
            : Text('CookChef'),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
            hasTapped = true;
            currentIndex = index;
          });
        },
      ),
      body: (!hasTapped || currentIndex == 0)
          ? SafeArea(
              minimum: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Recent',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        _recentAccount(id: 'chocoquake', name: 'Choco-quake'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : tabs[currentIndex],
    );
  }
}

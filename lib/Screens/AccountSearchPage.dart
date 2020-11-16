import 'package:cook_chef/Screens/AccountPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'FeedPage.dart';
import 'NotificationsPage.dart';
import 'RecipesPage.dart';

class AccountSearchPage extends StatefulWidget {
  static const String id = 'account_search_page';
  @override
  _AccountSearchPageState createState() => _AccountSearchPageState();
}

class _AccountSearchPageState extends State<AccountSearchPage> {
  int currentIndex = 0;
  bool hasTapped = false;

  final tabs = [
    FeedPage(),
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
        automaticallyImplyLeading: (!hasTapped) ? true : false,
        centerTitle: (!hasTapped) ? false : true,
        title: (!hasTapped)
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
        actions: <Widget>[
          if (currentIndex == 0 && hasTapped)
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, AccountSearchPage.id);
              },
            )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: (currentIndex == 0)
                ? Icon(Icons.home)
                : SvgPicture.asset(
                    'assets/icons/home_outlined.svg',
                    height: 25,
                  ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/chef.jpeg',
              height: 22,
            ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: (currentIndex != 2)
                ? Icon(Icons.notifications_none)
                : Icon(Icons.notifications),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: SizedBox(),
          ),
        ],
        onTap: (index) {
          setState(() {
            hasTapped = true;
            currentIndex = index;
          });
        },
      ),
      body: !hasTapped
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

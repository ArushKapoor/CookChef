import 'package:cook_chef/Screens/Account/AccountPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cook_chef/Screens/Recipe/IngredientsPage.dart';
import 'package:cook_chef/Screens/Recipe/SelectedIngredientsPage.dart';

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
    IngredientsPage(),
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
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
        ),
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
        actions: <Widget>[
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

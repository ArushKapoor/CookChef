import 'package:cook_chef/Screens/AccountPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utilities/BottomBar.dart';
import 'HomePage.dart';
import 'NotificationsPage.dart';
import 'RecipesPage.dart';

class AccountSearchPage extends StatefulWidget {
  static const String id = 'account_search_page';
  @override
  _AccountSearchPageState createState() => _AccountSearchPageState();
}

class _AccountSearchPageState extends State<AccountSearchPage> {
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
        title: Row(
          children: <Widget>[
            Icon(Icons.search),
            SizedBox(
              width: 10.0,
            ),
            Text('Search'),
          ],
        ),
      ),
      body: SafeArea(
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
            bottomNavigationBar(context: context, page: AccountSearchPage.id)
          ],
        ),
      ),
    );
  }
}

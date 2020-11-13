import 'package:cook_chef/Screens/AccountPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'HomePage.dart';
import 'NotificationsPage.dart';

class RecipesPage extends StatefulWidget {
  static const String id = 'recipes_page';
  @override
  _RecipesPageState createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  bool isSwitched = false;
  bool isChecked = false;
  bool isHindi = false;

  Container _createIngredient({AssetImage image, String text}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 27,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: image,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            flex: 1,
            child: Text(text),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: isChecked
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  )
                : Icon(Icons.check_circle_outline),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('CookChef'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              width: _width * 0.95,
              child: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  Text('Search for ingredients'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text(
                        'Hindi',
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isHindi = !isHindi;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isHindi ? Colors.green : Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      height: 20,
                      width: 40,
                      child: Row(
                        mainAxisAlignment: isHindi
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                )),
                            height: 18,
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: ListView(
                  children: <Widget>[
                    _createIngredient(
                        image: AssetImage('assets/images/allspice.jpeg'),
                        text: 'Allspice'),
                    _createIngredient(
                        image: AssetImage('assets/images/allspice.jpeg'),
                        text: 'Allspice'),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, HomePage.id);
                    },
                    child: SvgPicture.asset(
                      'assets/icons/home_outlined.svg',
                      height: 25,
                    ),
                  ),
                  Image.asset(
                    'assets/icons/chef.jpeg',
                    height: 22,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, NotificationsPage.id);
                    },
                    child: Icon(Icons.notifications_none),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, AccountPage.id);
                    },
                    child: Icon(Icons.account_circle),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

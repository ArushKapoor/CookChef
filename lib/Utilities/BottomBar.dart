import 'package:cook_chef/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Screens/AccountPage.dart';
import '../Screens/NotificationsPage.dart';
import '../Screens/RecipesPage.dart';

Widget bottomNavigationBar({BuildContext context, String page}) {
  return Container(
    margin: EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            if (page != HomePage.id)
              Navigator.pushReplacementNamed(context, HomePage.id);
          },
          child: (page != HomePage.id)
              ? SvgPicture.asset(
                  'assets/icons/home_outlined.svg',
                  height: 25,
                )
              : Icon(Icons.home),
        ),
        GestureDetector(
          onTap: () {
            if (page != RecipesPage.id)
              Navigator.pushReplacementNamed(context, RecipesPage.id);
          },
          child: Image.asset(
            'assets/icons/chef.jpeg',
            height: 22,
          ),
        ),
        GestureDetector(
          onTap: () {
            if (page != NotificationsPage.id)
              Navigator.pushReplacementNamed(context, NotificationsPage.id);
          },
          child: (page != NotificationsPage.id)
              ? Icon(Icons.notifications_none)
              : Icon(Icons.notifications),
        ),
        GestureDetector(
          onTap: () {
            if (page != AccountPage.id)
              Navigator.pushReplacementNamed(context, AccountPage.id);
          },
          child: Icon(Icons.account_circle),
        ),
      ],
    ),
  );
}

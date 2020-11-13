import 'package:cook_chef/Screens/AccountPage.dart';
import 'package:cook_chef/Screens/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationsPage extends StatefulWidget {
  static const String id = 'notifications_page';
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  Column _createLikedVideo({String image, String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          image,
          width: 140,
        ),
        Row(
          children: <Widget>[
            Container(
              width: 125,
              child: Text(
                text,
                maxLines: 2,
              ),
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ],
    );
  }

  Row _createComment({String text, String time, String image}) {
    return Row(
      children: <Widget>[
        Icon(Icons.account_circle),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 225,
              child: Text(
                text,
                maxLines: 2,
              ),
            ),
            Text(time),
          ],
        ),
        Image.asset(
          image,
          height: 45,
        ),
        Icon(Icons.more_vert),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CookChef'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.thumb_up),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Liked videos'),
                        Text('282 videos'),
                      ],
                    ),
                  ),
                  Text('view all'),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(width: 10),
                    _createLikedVideo(
                        image: 'assets/images/temp.jpeg',
                        text: 'Bollywood Flashmob at the...'),
                    SizedBox(width: 10),
                    _createLikedVideo(
                        image: 'assets/images/temp.jpeg',
                        text: 'Bollywood Flashmob at the...'),
                    SizedBox(width: 10),
                    _createLikedVideo(
                        image: 'assets/images/temp.jpeg',
                        text: 'Bollywood Flashmob at the...'),
                  ],
                ),
              ),
            ),
            Container(
              child: Expanded(
                child: ListView(
                  children: <Widget>[
                    _createComment(
                        text: 'T-Series commented on your post: nice video 🔥',
                        time: '3 hours ago',
                        image: 'assets/images/temp.jpeg'),
                    SizedBox(height: 10),
                    _createComment(
                        text: 'T-Series commented on your post: nice video 🔥',
                        time: '3 hours ago',
                        image: 'assets/images/temp.jpeg'),
                    SizedBox(height: 10),
                    _createComment(
                        text: 'T-Series commented on your post: nice video 🔥',
                        time: '3 hours ago',
                        image: 'assets/images/temp.jpeg'),
                    SizedBox(height: 10),
                    _createComment(
                        text: 'T-Series commented on your post: nice video 🔥',
                        time: '3 hours ago',
                        image: 'assets/images/temp.jpeg'),
                    SizedBox(height: 10),
                    _createComment(
                        text: 'T-Series commented on your post: nice video 🔥',
                        time: '3 hours ago',
                        image: 'assets/images/temp.jpeg'),
                    SizedBox(height: 10),
                    _createComment(
                        text: 'T-Series commented on your post: nice video 🔥',
                        time: '3 hours ago',
                        image: 'assets/images/temp.jpeg'),
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
                    child: Container(
                      child: SvgPicture.asset(
                        'assets/icons/home_outlined.svg',
                        height: 25,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icons/chef.jpeg',
                    height: 22,
                  ),
                  Icon(Icons.notifications),
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

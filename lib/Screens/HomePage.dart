import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

/* This method is to setup each dishCategory */
Container _dishCategory(String text) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[400]),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      color: Colors.white,
    ),
    child: Text(text),
  );
}

/* This method is to setup the post */
Container _post(
    {String name,
    String time,
    String description,
    Image image,
    double width,
    String likes,
    int comments}) {
  return Container(
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.account_circle),
            Column(
              children: <Widget>[
                Text(name),
                Text(time),
              ],
            ),
          ],
        ),
        Text(description),
        image,
        Row(
          children: <Widget>[
            Icon(
              Icons.favorite_border,
            ),
            Icon(Icons.chat_bubble_outline),
          ],
        ),
        Container(
          width: width,
          child: Text(
            '$likes likes',
          ),
        ),
        Container(
          width: width,
          child: Text('View all $comments comments'),
        ),
      ],
    ),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    /* These are media query variables which store the height
      and width of the phone screen.
     */
    final _height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      /* Setting up the app bar */
      appBar: AppBar(
        title: Text('CookChef'),
        centerTitle: true,
      ),

      /* Creating Safe Area so that the content stays inside the screen */
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              color: Color(0xffEBEDEC),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  /* Calling the _dishCategory method at line 10 */
                  _dishCategory('Indian'),
                  _dishCategory('Italian'),
                  _dishCategory('Shake'),
                  _dishCategory('South Indian'),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  /* Calling the _post method at line 23 */
                  _post(
                      name: 'FoodFood',
                      time: '28 mins',
                      description:
                          'A bite of Bhatura, just the size, oozing with the '
                          'chole is pure decadence The flavour burst in '
                          'your mouth, hot at first, tangy after. \n\n'
                          'See full recipe...See more',
                      image: Image.asset('assets/images/chole_bhature.jpg'),
                      likes: '18,550',
                      comments: 113,
                      width: _width),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

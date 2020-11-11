import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* Setting up the app bar */
      appBar: AppBar(
        title: Text('CookChef'),
        centerTitle: true,
      ),

      /* Creating Safe Area so that the content stays inside the screen */
      body: SafeArea(
        child: Container(
          color: Colors.teal,
        ),
      ),
    );
  }
}

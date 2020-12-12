import 'package:cook_chef/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  static final id = 'splash';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      lowerBound: 0.28,
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );
    _animationController.forward();
    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();

        //_animationController.forward();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushNamed(context, HomePage.id);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(children: [
              CircleAvatar(
                radius: _width * 0.2,
                backgroundImage: AssetImage('assets/icons/ingredients.png'),
              ),
              RichText(
                text: TextSpan(text: 'Cook Chef', children: [
                  TextSpan(
                      text: 'C', style: TextStyle(color: Colors.accents[5])),
                  TextSpan(text: 'O', style: TextStyle(color: Colors.amber[5])),
                  TextSpan(text: 'O', style: TextStyle(color: Colors.black)),
                  TextSpan(text: 'K', style: TextStyle(color: Colors.blue[5])),
                  TextSpan(text: 'C', style: TextStyle(color: Colors.brown[5])),
                  TextSpan(text: 'H', style: TextStyle(color: Colors.cyan[5])),
                  TextSpan(
                      text: 'E', style: TextStyle(color: Colors.deepOrange[4])),
                  TextSpan(text: 'F', style: TextStyle(color: Colors.green[5])),
                ]),
              )
            ]),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.all(_height * 0.05),
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(_height * 0.03)),
              height: _height * 0.15 * _animationController.value,
              width: _width * 0.1,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.all(_height * 0.05),
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(_height * 0.03)),
              width: _width * 0.3 * _animationController.value,
              height: _width * 0.1,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.all(_height * 0.05),
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(_height * 0.03)),
              height: _height * 0.15 * _animationController.value,
              width: _width * 0.1,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.all(_height * 0.05),
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(_height * 0.03)),
              height: _width * 0.1,
              width: _width * 0.3 * _animationController.value,
            ),
          ),
        ],
      )),
    );
  }
}

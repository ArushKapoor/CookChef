import 'package:cook_chef/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:math' as Math;

class SplashScreen extends StatefulWidget {
  static final id = 'splash';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController _controller;
  AnimationController _imageController;
  AssetImage cardFront;
  AssetImage cardBack;
  bool showFront = true;
  @override
  void initState() {
    super.initState();
    Navigator.pushNamed(context, HomePage.id);
    cardFront = AssetImage(
      'assets/icons/ingredients.png',
    );
    cardBack = AssetImage('assets/icons/ingredients.png');
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 300), value: 0);
    _imageController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 300), value: 0);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(cardFront, context);
    precacheImage(cardBack, context);
  }

  @override
  void dispose() {
    _controller.dispose();
    _imageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        AnimatedBuilder(
          animation: _controller,
          //child: child,
          builder: (BuildContext context, Widget child) {
            return Transform(
              transform: Matrix4.rotationY((_controller.value) * Math.pi / 2),
              alignment: Alignment.center,
              child: Container(
                  height: (MediaQuery.of(context).size.height - 130),
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundImage: showFront ? cardFront : cardBack,
                    radius: (_imageController.value) * _height * 0.08 +
                        _height * 0.03,
                  )),
            );
          },
        ),
        FlatButton(
          child: Text("flip me"),
          onPressed: () async {
            // Flip the image
            await _imageController.forward();
            await _controller.forward();
            setState(() => showFront = !showFront);
            await _imageController.animateBack(0.7);
            await _controller.reverse();

            setState(() {});
          },
        ),
      ],
    ));
  }
}

import 'package:cook_chef/Models/AccountsList.dart';
import 'package:cook_chef/Models/IngredientsHandler.dart';
import 'package:cook_chef/Screens/FeedPage.dart';
import 'package:cook_chef/Screens/Account/AccountPage.dart';
import 'package:cook_chef/Screens/Recipe/IngredientsPage.dart';
import 'package:cook_chef/Screens/Recipe/SelectedIngredientsPage.dart';
import 'package:cook_chef/Widgets/DataSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cook_chef/Widgets/HolePainter.dart';
import 'dart:math' as Math;
import 'package:cook_chef/Models/CommentsTextFeild.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AssetImage cardImage;
  //NetworkingHelper networkingHelper = NetworkingHelper();
  AccountsList accounts = AccountsList();
  List<Accounts> accountsList = [];

  List<Widget> tabs = [
    FeedPage(),
    IngredientsPage(),
    AccountPage(
      ownUser: true,
    ),
  ];

  @override
  void initState() {
    super.initState();
    cardImage = AssetImage(
      'assets/icons/logo.png',
    );
    getAccounts();
  }

  @override
  void didChangeDependencies() {
    precacheImage(cardImage, context);
    super.didChangeDependencies();
  }

  getAccounts() async {
    accountsList = await accounts.gettingAccounts();
    // print(accountsList[0].username);
    // for (int i = 0; i < 20000; i++) {
    //   print(i);
    // }
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size.aspectRatio;
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    // print(accountsList[1].username);
    //networkingHelper.helper();
    return Stack(children: [
      Scaffold(
        /* Setting up the app bar */
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('ChefGuru'),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
          ),
          actions: <Widget>[
            if (Provider.of<TextFeildToggler>(context, listen: false)
                    .currentIndex ==
                0)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Navigator.pushNamed(context, AccountSearchPage.id);
                    showSearch(
                      context: context,
                      delegate: DataSearch(accountsList: accountsList),
                    );
                  },
                ),
              ),
            if (Provider.of<TextFeildToggler>(context, listen: false)
                    .currentIndex ==
                1)
              Container(
                margin: EdgeInsets.only(right: 10.0),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      if (Provider.of<IngredientsHandler>(context,
                                  listen: false)
                              .selectedIngredients
                              .length ==
                          0) {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),

                            content: Builder(
                              builder: (context) {
                                return Container(
                                  height: _height * 0.218,
                                  width: _width * 0.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: _width,
                                        child: Text(
                                          'No Ingredient Selected',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              height: _height * 0.004),
                                        ),
                                      ),
                                      SizedBox(
                                        height: _height * 0.01,
                                      ),
                                      Container(
                                        width: _width,
                                        child: Text(
                                            'You have to select atleast one ingredient.'),
                                      ),
                                      SizedBox(
                                        height: _height * 0.015,
                                      ),
                                      Container(
                                        width: _width,
                                        alignment: Alignment.bottomRight,
                                        child: FlatButton(
                                          child: Text(
                                            'Okay',
                                            style: TextStyle(
                                              color: Color(0xff088378),
                                            ),
                                            textAlign: TextAlign.right,
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            // actions: <Widget>[
                            //   FlatButton(
                            //     onPressed: () {
                            //       Navigator.of(ctx).pop();
                            //     },
                            //     child: Text("Okay"),
                            //   ),
                            // ],
                          ),
                        );
                      } else {
                        Navigator.pushNamed(
                            context, SelectedIngredientsPage.id);
                      }
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
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: Provider.of<TextFeildToggler>(context, listen: false)
              .currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: (Provider.of<TextFeildToggler>(context, listen: false)
                          .currentIndex ==
                      0)
                  ? Icon(
                      Icons.home,
                      size: _size * 60,
                    )
                  : Icon(
                      Icons.home_outlined,
                      size: _size * 60,
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: (Provider.of<TextFeildToggler>(context, listen: false)
                          .currentIndex ==
                      1)
                  ? Image.asset(
                      'assets/icons/filledIngredient.png',
                      height: _size * 50,
                    )
                  : Image.asset(
                      'assets/icons/OutlinedIngredients.png',
                      height: _size * 50,
                    ),
              label: 'Let\'s Cook',
            ),
            BottomNavigationBarItem(
              icon: (Provider.of<TextFeildToggler>(context, listen: false)
                          .currentIndex !=
                      2)
                  ? Icon(
                      Icons.account_circle_outlined,
                      size: _size * 60,
                    )
                  : Icon(
                      Icons.account_circle,
                      size: _size * 60,
                    ),
              label: 'Account',
            ),
          ],
          onTap: (index) {
            setState(() {
              Provider.of<TextFeildToggler>(context, listen: false)
                  .currentIndex = index;
            });
          },
        ),

        /* Creating Safe Area so that the content stays inside the screen */
        body: tabs[
            Provider.of<TextFeildToggler>(context, listen: false).currentIndex],
      ),
      IgnorePointer(
        child: AnimationScreen(
          cardImage: cardImage,
        ),
      )
    ]);
  }
}

class AnimationScreen extends StatefulWidget {
  final AssetImage cardImage;
  AnimationScreen({this.cardImage});
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with TickerProviderStateMixin {
  AnimationController _controller;
  AnimationController _imageController;
  AnimationController _backscreenController;
  // AssetImage cardFront;
  // AssetImage cardBack;
  Animation<double> holeSize;
  bool showFront = true;
  @override
  void initState() {
    super.initState();
    // cardFront = AssetImage(
    //   'assets/icons/logo.png',
    // );
    // cardBack = AssetImage('assets/icons/logo.png');
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 700), value: 0);
    _imageController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 700), value: 0);
    _backscreenController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1000,
      ),
    );
    holeSize = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(
        parent: _backscreenController,
        curve: Interval(0.5, 1.0, curve: Curves.easeIn),
      ),
    );

    _controller.addListener(() {
      setState(() {});
    });
    _imageController.addListener(() {
      setState(() {});
    });
    _backscreenController.addListener(() {
      setState(() {});
    });
    haveSomeAnimation();
  }

  void haveSomeAnimation() async {
    await _imageController.forward();
    await _controller.forward();
    setState(() => showFront = !showFront);
    await _imageController.animateBack(0.7);
    await _controller.reverse();
    Future.delayed(Duration(milliseconds: 1000), () async {
      await _backscreenController.forward();
    });
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();

  //   precacheImage(cardFront, context);
  //   precacheImage(cardBack, context);
  // }

  @override
  void dispose() {
    _controller.dispose();
    _imageController.dispose();
    _backscreenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(
          painter: HolePainter(
              color: Colors.white, holeSize: holeSize.value * _width),
        ),
      ),
      Opacity(
        opacity: 1 - _backscreenController.value,
        child: Center(
          child: AnimatedBuilder(
            animation: _controller,
            //child: child,
            builder: (BuildContext context, Widget child) {
              return Transform(
                transform: Matrix4.rotationY((_controller.value) * Math.pi / 2),
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        showFront ? widget.cardImage : widget.cardImage,
                    radius: (_imageController.value) * _height * 0.08 +
                        _height * 0.03,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ]);
  }
}
// IgnorePointer(
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           child: CustomPaint(
//             painter: HolePainter(
//                 color: Colors.green, holeSize: _controller.value * _width),
//           ),
//         ),
//       ),

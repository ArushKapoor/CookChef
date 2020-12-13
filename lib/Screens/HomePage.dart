import 'package:cook_chef/Models/AccountsList.dart';
import 'package:cook_chef/Models/IngredientsHandler.dart';
import 'package:cook_chef/Screens/FeedPage.dart';
import 'package:cook_chef/Screens/Account/AccountPage.dart';
import 'package:cook_chef/Screens/Account/AccountSearchPage.dart';
import 'package:cook_chef/Screens/Recipe/IngredientsPage.dart';
import 'package:cook_chef/Screens/Recipe/SelectedIngredientsPage.dart';
import 'package:cook_chef/Widgets/DataSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  //NetworkingHelper networkingHelper = NetworkingHelper();
  AccountsList accounts = AccountsList();
  List<Accounts> accountsList = [];

  final tabs = [
    FeedPage(),
    IngredientsPage(),
    AccountPage(
      ownUser: true,
    ),
  ];

  @override
  void initState() {
    super.initState();
    getAccounts();
  }

  getAccounts() async {
    accountsList = await accounts.gettingAccounts();
    print(accountsList[0].username);
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size.aspectRatio;
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    // print(accountsList[1].username);
    //networkingHelper.helper();
    return Scaffold(
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
          if (currentIndex == 0)
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
          if (currentIndex == 1)
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    if (IngredientsHandler().selectedIngredients.length == 0) {
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
                      Navigator.pushNamed(context, SelectedIngredientsPage.id);
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
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: (currentIndex == 0)
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
            icon: (currentIndex == 1)
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
            icon: (currentIndex != 2)
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
            currentIndex = index;
          });
        },
      ),

      /* Creating Safe Area so that the content stays inside the screen */
      body: tabs[currentIndex],
    );
  }
}

import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:cook_chef/Screens/AccountSettings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatefulWidget {
  static const String id = 'account_page';
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  Container _createPost(
      {String name, String time, String description, Image image}) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 30,
              ),
              SizedBox(
                width: 6.0,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name),
                    Text(time),
                  ],
                ),
              ),
              Icon(Icons.more_horiz),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(description),
          SizedBox(
            height: 10.0,
          ),
          image,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Text('account_name'),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                      size: 100,
                    ),
                    Text('User_Name'),
                    SizedBox(
                      height: 4,
                    ),
                    Text('\"Here you can add his/her bio\"'),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffC1C1C1)),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: Color(0xffD7D7D7),
                      ),
                      width: _width * 0.9,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AccountSettings.id);
                        },
                        child: Center(
                          child: Text('Edit Profile'),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Upload'),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.account_circle),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'What\'s your recipe?',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Photos',
                            style: TextStyle(color: Colors.green),
                          ),
                          Text('|'),
                          Text(
                            'Videos',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                _createPost(
                    name: 'Tasty with McDonalds.',
                    time: '1 hr · Paid partnership ·',
                    description:
                        'Three burgers, three level of spice - there\'s one '
                        'for everyone. Made with the new McSpicy® burger '
                        'from Macca\'s',
                    image: Image.asset('assets/images/burger.jpg')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

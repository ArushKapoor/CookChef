import 'package:cook_chef/Screens/Account/AccountSettings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  static final id = 'about';
  @override
  _AboutPage createState() => _AboutPage();
}

class _AboutPage extends State<About> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context, AccountSettings.id);
            },
            child: Icon(Icons.arrow_back)),
        title: Text('About'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
        ),
      ),
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: height * 0.03),
            child: Text(
              'Terms of Use',
            ),
          ),
        ),
      ),
    );
  }
}

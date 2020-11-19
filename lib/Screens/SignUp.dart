import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:cook_chef/Screens/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
//import 'package:firebase_showcase/pages/setup/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:cook_chef/Screens/SignIn.dart';
import 'Animation/FadeAnimation.dart';

class SignUpPage extends StatefulWidget {
  static final id = 'signup_page';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 300,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 30,
                        height: 250,
                        width: width,
                        child: FadeAnimation(
                            1,
                            Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/back.jpeg'),
                                        fit: BoxFit.fill)),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: width * 0.3, left: width * 0.2),
                                  child: Text('Welcome to ChefGuru!',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.5,
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Color.fromRGBO(49, 39, 79, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                          1.7,
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.green[100],
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    controller: _emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    cursorColor: Colors.green,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "John Doe",
                                        labelText: 'Username',
                                        labelStyle:
                                            TextStyle(color: Colors.grey),
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    controller: _emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    cursorColor: Colors.green,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "something@example.com",
                                        labelText: 'E-mail',
                                        labelStyle:
                                            TextStyle(color: Colors.grey),
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    obscureText: true,
                                    controller: _passwordController,
                                    cursorColor: Colors.green,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "password",
                                        labelText: 'Password',
                                        labelStyle:
                                            TextStyle(color: Colors.grey),
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextField(
                                    obscureText: true,
                                    controller: _passwordController,
                                    cursorColor: Colors.green,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "password",
                                        labelText: 'Re-enter Password',
                                        labelStyle:
                                            TextStyle(color: Colors.grey),
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      FadeAnimation(
                        1.9,
                        MaterialButton(
                            onPressed: () async {
                              context.read<AuthenticationService>().signUp(
                                  email: _emailController.text,
                                  password: _passwordController.text);

                              User updateUser =
                                  FirebaseAuth.instance.currentUser;
                              print(_usernameController.text);
                              updateUser.updateProfile(
                                  displayName: _usernameController.text);
                              userSetUp(_usernameController.text);

                              Navigator.of(context).pushNamed(HomePage.id);
                            },
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xff006043),
                              ),
                              child: Center(
                                child: Text(
                                  "Register",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                          2,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Already have an account? '),
                              MaterialButton(
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Color.fromRGBO(49, 39, 79, .6)),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed(Login.id);
                                },
                              )
                            ],
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

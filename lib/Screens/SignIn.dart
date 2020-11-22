import 'package:cook_chef/Screens/Forgot_Password.dart';
import 'package:provider/provider.dart';
import 'package:cook_chef/Screens/HomePage.dart';
import 'package:cook_chef/Screens/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'Animation/FadeAnimation.dart';

class Login extends StatefulWidget {
  static final id = 'login';
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String email, password;
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
                  height: 350,
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
                                  child: Text('Welcome Back!',
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
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.5,
                        Text(
                          "Login",
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
                                  child: TextField(
                                    obscureText: true,
                                    controller: _passwordController,
                                    cursorColor: Colors.green,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        labelText: 'Password',
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
                        height: 20,
                      ),
                      FadeAnimation(
                          1.7,
                          MaterialButton(
                            child: Center(
                                child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.green),
                            )),
                            onPressed: () {
                              Navigator.of(context).pushNamed(Forgot.id);
                            },
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                        1.9,
                        MaterialButton(
                            onPressed: () async {
                              try {
                                context.read<AuthenticationService>().signIn(
                                    email: _emailController.text,
                                    password: _passwordController.text);
                                User user = FirebaseAuth.instance.currentUser;
                                if (user != null && user.emailVerified) {
                                  Navigator.of(context).pushNamed(HomePage.id);
                                }
                              } catch (e) {
                                print(e);
                                _emailController.text = "";
                                _passwordController.text = "";
                              }
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
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                          2,
                          MaterialButton(
                            child: Center(
                              child: Text(
                                "Create Account",
                                style: TextStyle(
                                    color: Color.fromRGBO(49, 39, 79, .6)),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed(SignUpPage.id);
                            },
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

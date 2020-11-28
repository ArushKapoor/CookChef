import 'package:cook_chef/Screens/Authentication/Forgot_Password.dart';
import 'package:provider/provider.dart';
import 'package:cook_chef/Screens/HomePage.dart';
import 'package:cook_chef/Screens/Authentication/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cook_chef/Auth/AuthenticationService.dart';
import '../Animation/FadeAnimation.dart';

class Login extends StatefulWidget {
  static final id = 'login';
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String message;
  String email, password;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: height * 0.35,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              //top: 30,
                              height: height * 0.25,
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
                                  ),
                                ),
                              ),
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
                              height: height * 0.04,
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
                                      child: TextFormField(
                                        controller: _emailController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        cursorColor: Colors.green,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "something@example.com",
                                          labelText: 'E-mail',
                                          labelStyle:
                                              TextStyle(color: Colors.grey),
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                        ),
                                        textInputAction: TextInputAction.done,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextFormField(
                                        obscureText: true,
                                        controller: _passwordController,
                                        cursorColor: Colors.green,
                                        textInputAction: TextInputAction.done,
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
                              ),
                            ),
                            SizedBox(
                              height: height * 0.025,
                            ),
                            FadeAnimation(
                              1.7,
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, Forgot.id);
                                },
                                child: Center(
                                  child: Text(
                                    "Forgot your Password?",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.07,
                            ),
                            if (message != null)
                              Center(
                                child: Text(
                                  message,
                                  style: TextStyle(
                                    color: Color(0xff006043),
                                  ),
                                ),
                              ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            FadeAnimation(
                              1.9,
                              Container(
                                height: height * 0.06,
                                // width: width * 0.2,
                                margin: EdgeInsets.symmetric(horizontal: 60),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xff006043),
                                ),

                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  onPressed: () async {
                                    // if (_formKey.currentState.validate()) {
                                    try {
                                      isVisible = true;
                                      setState(() {});
                                      message = await context
                                          .read<AuthenticationService>()
                                          .signIn(
                                              email: _emailController.text,
                                              password:
                                                  _passwordController.text);

                                      isVisible = false;
                                      setState(() {});
                                    } catch (e) {
                                      print(e);
                                      _emailController.text = "";
                                      _passwordController.text = "";
                                    }
                                    // }
                                  },
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.035,
                            ),
                            FadeAnimation(
                                2,
                                GestureDetector(
                                  child: Center(
                                    child: Text(
                                      "Don't have account? Create One",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(49, 39, 79, .6)),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(SignUpPage.id);
                                  },
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if (isVisible)
                Opacity(
                  opacity: 0.60,
                  child: Container(
                    height: height,
                    width: width,
                  ),
                ),
              if (isVisible)
                Center(
                  child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xff006043)),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

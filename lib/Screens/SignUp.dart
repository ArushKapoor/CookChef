import 'package:cook_chef/Auth/AuthenticationService.dart';
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
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: height * 0.29,
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
                          height: height * 0.025,
                        ),
                        FadeAnimation(
                          1.9,
                          Container(
                            height: height * 0.06,
                            margin: EdgeInsets.symmetric(horizontal: 60),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xff006043),
                            ),
                            child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () async {
                                  context.read<AuthenticationService>().signUp(
                                      email: _emailController.text,
                                      password: _passwordController
                                          .text); //User updateUser = FirebaseAuth.instance.currentUser;
                                  //print(_usernameController.text);
                                  //updateUser.updateProfile(displayName: _usernameController.text);
                                  //userSetUp(_usernameController.text); Navigator.of(context).pushNamed(Login.id);
                                },
                                child: Center(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        FadeAnimation(
                            2,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Already have an account?'),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                GestureDetector(
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(49, 39, 79, .7)),
                                    ),
                                  ),
                                  onTap: () {
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
          ),
        ),
      ),
    );
  }
}

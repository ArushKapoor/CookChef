import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Animation/FadeAnimation.dart';
import 'package:provider/provider.dart';
import 'package:cook_chef/Auth/AuthenticationService.dart';

class ForgotPassword extends StatefulWidget {
  static final id = 'forgot_password';
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController;
  bool userNotFound = false;
  bool isVisible = false;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(children: [
          Form(
            key: _formKey,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: _height * 0.32,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 0,
                            height: _height * 0.27,
                            width: _width,
                            child: FadeAnimation(
                              1,
                              Stack(
                                children: <Widget>[
                                  Container(
                                    height: _height * 0.28,
                                    width: _width,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/back.jpeg'),
                                            fit: BoxFit.fill)),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: _height * 0.15,
                                          left: _width * 0.14),
                                      child: Text('OOPS! Forgot Password',
                                          style: TextStyle(
                                              fontSize: _height * 0.043,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  Positioned(
                                    left: _width * 0.03,
                                    top: _height * 0.02,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        child: Icon(
                                          Icons.arrow_back_sharp,
                                          color: Colors.white,
                                          size: _height * 0.05,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.05,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          FadeAnimation(
                            1.5,
                            Column(
                              children: [
                                TextFormField(
                                  controller: _emailController,
                                  cursorColor: Colors.green,
                                  decoration: InputDecoration(
                                      hintText: "something@example.com",
                                      labelText: 'Email',
                                      labelStyle: TextStyle(color: Colors.grey),
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                                SizedBox(
                                  height: _height * 0.05,
                                ),
                                Center(
                                  child: Text(
                                    'Enter email linked with your account!',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.green),
                                  ),
                                ),
                                SizedBox(
                                  height: _height * 0.05,
                                ),
                                Center(
                                  child: Text(
                                    userNotFound
                                        ? 'Incorrect Email'
                                        : 'A reset link is send to your email',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.green),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: _height * 0.1),
                          FadeAnimation(
                            2,
                            // FlatButton(
                            //   child: Container(
                            //     height: 50,
                            //     margin: EdgeInsets.symmetric(horizontal: 60),
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(50),
                            //       color: Color(0xff006043),
                            //     ),
                            //     child: Center(
                            //       child: Text(
                            //         "Verify",
                            //         style: TextStyle(color: Colors.white),
                            //       ),
                            //     ),
                            //   ),
                            //   onPressed: () async {
                            //     userNotFound = await context
                            //         .read<AuthenticationService>()
                            //         .forgetPassword(_emailController.text);
                            //     setState(() {});
                            //     print(userNotFound);
                            //   },
                            // ),
                            GestureDetector(
                              onTap: () async {
                                isVisible = true;
                                setState(() {});
                                userNotFound = await context
                                    .read<AuthenticationService>()
                                    .forgetPassword(_emailController.text);
                                setState(() {
                                  isVisible = false;
                                });
                                Navigator.pop(context);
                                print(userNotFound);
                              },
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(
                                    horizontal: _width * 0.23),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xff006043),
                                ),
                                child: Center(
                                  child: Text(
                                    "Verify",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (isVisible)
            Opacity(
              opacity: 0.60,
              child: Container(
                height: _height,
                width: _width,
              ),
            ),
          if (isVisible)
            Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff006043)),
              ),
            ),
        ]),
      ),
    );
  }
}

import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:cook_chef/Screens/Account/AccountSettings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth _firebaseAuth;

class UpdateEmail extends StatefulWidget {
  static final id = 'update_pass';
  @override
  _UpdateMailState createState() => _UpdateMailState();
}

class _UpdateMailState extends State<UpdateEmail> {
  final _formKey = GlobalKey<FormState>();
  bool emailValidator = false;
  TextEditingController _emailController;
  AuthenticationService _authenticationService =
      AuthenticationService(_firebaseAuth);
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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, AccountSettings.id);
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          'Update Email',
        ),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: height * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' Current Email', style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.all(height * 0.01),
                      child: Text(
                        context.watch<AuthenticationService>().currentEmail(),
                        style: TextStyle(fontSize: 14, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(' New Email', style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 15, right: 15, bottom: 5),
                        child: TextFormField(
                            controller: _emailController,
                            cursorColor: Colors.green,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Colors.grey,
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                            cursorHeight: 8,
                            validator: (value) {
                              String pattern =
                                  r'^(([^&lt;&gt;()[\]\\.,;:\s@\"]+(\.[^&lt;&gt;()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                              RegExp regExp = new RegExp(pattern);
                              if (value.isEmpty) {
                                return "Email is Required";
                              } else if (!regExp.hasMatch(value)) {
                                return "Invalid Email";
                              } else {
                                return null;
                              }
                            }),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Center(
                      child: Container(
                        height: height * 0.06,
                        // width: width * 0.2,
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff006043),
                        ),

                        child: FlatButton(
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                emailValidator = await context
                                    .read<AuthenticationService>()
                                    .updateEmail(_emailController.text);
                                setState(() {});
                                print(emailValidator);
                                await context
                                    .read<AuthenticationService>()
                                    .signOut();
                              }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text('Update Email',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:cook_chef/Screens/Authentication/Forgot_Password.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cook_chef/Auth/AuthenticationService.dart';

class UpdatePassword extends StatefulWidget {
  static final id = 'update_pass';
  @override
  _UpdatePassState createState() => _UpdatePassState();
}

class _UpdatePassState extends State<UpdatePassword> {
  final _formKey = GlobalKey<FormState>();
  bool passwordValidator = false;
  TextEditingController _passwordController;
  TextEditingController _repasswordController;
  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _repasswordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _repasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    var password;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
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
                    Text(' New Password', style: TextStyle(fontSize: 20)),
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
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextFormField(
                          controller: _passwordController,
                          cursorColor: Colors.green,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            password = value;
                            String patttern =
                                r'(^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$)';
                            RegExp regExp = new RegExp(patttern);
                            if (value.isEmpty) {
                              return "Password is Required";
                            } else if (value.length < 8) {
                              return "Password must have minimum eight characters";
                            } else if (!regExp.hasMatch(value)) {
                              return "Password should have at least one uppercase letter, one lowercase letter and one number";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(' Confirm Password', style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: new BorderRadius.circular(40.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextFormField(
                          controller: _repasswordController,
                          cursorColor: Colors.green,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value != password)
                              return 'Entered password is not same as above';
                            else
                              return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Center(
                      child: GestureDetector(
                          child: Text('Forgot Password?'),
                          onTap: () {
                            Navigator.of(context).pushNamed(Forgot.id);
                          }),
                    ),
                    SizedBox(
                      height: height * 0.02,
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
                              passwordValidator = await context
                                  .read<AuthenticationService>()
                                  .updatePasswd(_passwordController.text);

                              setState(() {});
                              print(passwordValidator);
                            }
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              'Update Password',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    )
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

import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:cook_chef/Screens/Authentication/SignIn.dart';
import '../Animation/FadeAnimation.dart';

class SignUpPage extends StatefulWidget {
  static final id = 'signup_page';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var password;
  bool isVisible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
// =======
//     final mq = MediaQuery.of(context);

//     final usernameField = TextFormField(
//       controller: _usernameController,
//       style: TextStyle(
//         color: Colors.white,
//       ),
//       cursorColor: Colors.white,
//       decoration: InputDecoration(
//         focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             color: Colors.white,
//           ),
//         ),
//         hintText: "John Doe",
//         labelText: "Username",
//         labelStyle: TextStyle(
//           color: Colors.white,
//         ),
//         hintStyle: TextStyle(
//           color: Colors.white,
//         ),
//       ),
//     );

//     final emailField = TextFormField(
//       controller: _emailController,
//       keyboardType: TextInputType.emailAddress,
//       style: TextStyle(
//         color: Colors.white,
//       ),
//       cursorColor: Colors.white,
//       decoration: InputDecoration(
//         focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             color: Colors.white,
//           ),
//         ),
//         hintText: "something@example.com",
//         labelText: "Email",
//         labelStyle: TextStyle(
//           color: Colors.white,
//         ),
//         hintStyle: TextStyle(
//           color: Colors.white,
//         ),
//       ),
//     );

//     final passwordField = TextFormField(
//       obscureText: true,
//       controller: _passwordController,
//       style: TextStyle(
//         color: Colors.white,
//       ),
//       cursorColor: Colors.white,
//       decoration: InputDecoration(
//         focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             color: Colors.white,
//           ),
//         ),
//         hintText: "password",
//         labelText: "Password",
//         labelStyle: TextStyle(
//           color: Colors.white,
//         ),
//         hintStyle: TextStyle(
//           color: Colors.white,
//         ),
//       ),
//     );

//     final repasswordField = TextFormField(
//       obscureText: true,
//       controller: _repasswordController,
//       style: TextStyle(
//         color: Colors.white,
//       ),
//       cursorColor: Colors.white,
//       decoration: InputDecoration(
//         focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             color: Colors.white,
//           ),
//         ),
//         hintText: "password",
//         labelText: "Re-enter Password",
//         labelStyle: TextStyle(
//           color: Colors.white,
//         ),
//         hintStyle: TextStyle(
//           color: Colors.white,
//         ),
//       ),
//     );

//     final fields = Padding(
//       padding: EdgeInsets.only(top: 10.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: <Widget>[
//           usernameField,
//           emailField,
//           passwordField,
//           repasswordField,
//         ],
//       ),
//     );

//     final registerButton = Material(
//       elevation: 5.0,
//       borderRadius: BorderRadius.circular(25.0),
//       color: Colors.white,
//       child: MaterialButton(
//         minWidth: mq.size.width / 1.2,
//         padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
//         child: Text(
//           "Register",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 20.0,
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         onPressed: () async {
//           context.read<AuthenticationService>().signUp(
//               email: _emailController.text, password: _passwordController.text);

//           //User updateUser = FirebaseAuth.instance.currentUser;
//           //print(_usernameController.text);
//           //updateUser.updateProfile(displayName: _usernameController.text);
//           //userSetUp(_usernameController.text);

//           Navigator.of(context).pushNamed(Login.id);
//         },
//       ),
//     );

//     final bottom = Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         registerButton,
//         Padding(
//           padding: EdgeInsets.all(8.0),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Text(
//               "Already have an account?",
//               style: Theme.of(context).textTheme.subtitle1.copyWith(
//                     color: Colors.white,
//                   ),
//             ),
//             MaterialButton(
//               onPressed: () {
//                 Navigator.of(context).pushNamed(Login.id);
//               },
//               child: Text(
//                 "Login",
//                 style: Theme.of(context).textTheme.subtitle1.copyWith(
//                       color: Colors.white,
//                       decoration: TextDecoration.underline,
//                     ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
// >>>>>>> 6cf8d1ad09fe51106abe4c8714ec470797a915f5

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Stack(children: [
              SingleChildScrollView(
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
                                ),
                              ),
                            ),
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
                                      child: TextFormField(
                                          controller: _usernameController,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          cursorColor: Colors.green,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "John Doe",
                                              labelText: 'Username',
                                              labelStyle:
                                                  TextStyle(color: Colors.grey),
                                              hintStyle: TextStyle(
                                                  color: Colors.grey)),
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return "Username is Required";
                                            }
                                            return null;
                                          }),
                                    ),
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
                                              hintStyle: TextStyle(
                                                  color: Colors.grey)),
                                          validator: (value) {
                                            String pattern =
                                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                            RegExp regExp = new RegExp(pattern);
                                            if (value.isEmpty) {
                                              return "Email is Required";
                                            } else if (!regExp
                                                .hasMatch(value)) {
                                              return "Invalid Email";
                                            } else {
                                              return null;
                                            }
                                          }),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[200]))),
                                      child: TextFormField(
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
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextFormField(
                                        obscureText: true,
                                        controller: _repasswordController,
                                        cursorColor: Colors.green,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "password",
                                            labelText: 'Re-enter Password',
                                            labelStyle:
                                                TextStyle(color: Colors.grey),
                                            hintStyle:
                                                TextStyle(color: Colors.grey)),
                                        validator: (value) {
                                          if (value != password)
                                            return 'Entered password is not same as above';
                                          else
                                            return null;
                                        },
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
                                  if (_formKey.currentState.validate()) {
                                    setState(() {
                                      isVisible = true;
                                    });
                                    await context
                                        .read<AuthenticationService>()
                                        .signUp(
                                            email: _emailController.text,
                                            password: _passwordController.text,
                                            username: _usernameController.text);
                                    setState(() {
                                      isVisible = false;
                                    });
                                    //User updateUser = FirebaseAuth.instance.currentUser;
                                    //print(_usernameController.text);
                                    //updateUser.updateProfile(displayName: _usernameController.text);

                                    Navigator.of(context).pushNamed(Login.id);
                                  }
                                },
                                child: Center(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
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
            ]),
          ),
        ),
      ),
    );
  }
}

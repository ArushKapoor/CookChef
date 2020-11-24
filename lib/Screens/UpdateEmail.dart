import 'package:cook_chef/Screens/AccountSettings.dart';
import 'package:flutter/material.dart';

class UpdateEmail extends StatefulWidget {
  static final id = 'update_pass';
  @override
  _UpdateMailState createState() => _UpdateMailState();
}

class _UpdateMailState extends State<UpdateEmail> {
  final _formKey = GlobalKey<FormState>();

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
                            'something@example.com',
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
                              borderRadius: new BorderRadius.circular(40.0),
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                    cursorColor: Colors.green,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    )))),
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
                              onPressed: null,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                  child: Text('Update Email',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)))),
                        ))
                      ],
                    ),
                  )),
            ))));
  }
}

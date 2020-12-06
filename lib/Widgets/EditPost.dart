import 'package:cook_chef/Screens/UploadPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:cook_chef/Models/Arguments.dart';

class EditPost extends StatelessWidget {
  final String postId;
  EditPost({this.postId});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: _height * 0.75),
          child: Container(
            padding: EdgeInsets.only(top: _height * 0.05, left: _width * 0.08),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, UploadPage.id,
                        arguments: UploadPageArguments(
                            toUpdate: true, postId: postId));
                  },
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/pin.png',
                          scale: _height * 0.013,
                        ),
                        SizedBox(
                          width: _width * 0.04,
                        ),
                        Text(
                          'Edit Recipe',
                          style: TextStyle(fontSize: _height * 0.03),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await context.read<CloudFirestore>().deletePost(postId);
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/icons/delete.svg',
                          height: _height * 0.040,
                        ),
                        SizedBox(
                          width: _width * 0.04,
                        ),
                        Text(
                          'Delete Recipe',
                          style: TextStyle(fontSize: _height * 0.03),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: _height * 0.22,
          left: _width * 0.42,
          child: Container(
            width: _width * 0.15,
            height: _height * 0.015,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
          ),
        ),
      ],
    );
  }
}

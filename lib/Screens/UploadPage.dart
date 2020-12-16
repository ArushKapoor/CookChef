import 'dart:io';
import 'package:cook_chef/Models/Arguments.dart';
import 'package:provider/provider.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UploadPage extends StatefulWidget {
  static const String id = 'upload_page';

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  TextEditingController _postController = TextEditingController();
  bool isVisible = false;
  File _image;
  ImagePicker imagePicker = new ImagePicker();

  Future _imgFromCamera() async {
    PickedFile image = await imagePicker.getImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = File(image.path);
    });
  }

  Future _imgFromGallery() async {
    PickedFile image = await imagePicker.getImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = File(image.path);
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final UploadPageArguments args = ModalRoute.of(context).settings.arguments;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    String uid = context.watch<AuthenticationService>().uniqueId;
    QuerySnapshot snapshot = context.watch<QuerySnapshot>();
    String meraUserName, meraUserImage;
    String textFeildLabel = 'What\'s your recipe ?';
    final users = snapshot.docs;
    for (var user in users) {
      final auser = user.get('uid');
      if (auser == uid) {
        meraUserName = user.get('username');
        meraUserImage = user.get('imageLink');
      }
    }
    if (args.toUpdate) {
      textFeildLabel = args.postText;
    }
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
        ),
        title: Text(args.toUpdate ? 'Update Post' : 'Upload'),
        actions: <Widget>[
          if (_postController.text.isNotEmpty && _image != null ||
              args.toUpdate)
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: Center(
                child: GestureDetector(
                  onTap: () async {
                    if (_postController.text.isNotEmpty &&
                            _image != null &&
                            isVisible == false ||
                        args.toUpdate) {
                      setState(() {
                        isVisible = true;
                      });
                      if (args.toUpdate) {
                        await context
                            .read<CloudFirestore>()
                            .updatingPost(_postController.text, args.postId);
                      } else {
                        await context
                            .read<CloudFirestore>()
                            .addingPost(_postController.text, _image);
                      }
                      setState(() {
                        isVisible = false;
                      });
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    args.toUpdate ? 'Done' : 'Share',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ),
            ),
        ],
      ),
      resizeToAvoidBottomInset: (_image == null) ? true : false,
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: 5.0,
                      ),
                      CircleAvatar(
                        radius: width * 0.05,
                        backgroundImage: NetworkImage(meraUserImage),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            meraUserName,
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                      ),
                      // Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: (_image == null)
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: TextField(
                                controller: _postController,
                                keyboardType: TextInputType.multiline,
                                maxLines: 2000,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: textFeildLabel,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_image != null || args.toUpdate)
                    Container(
                      height: args.toUpdate ? height * 0.35 : height * 0.5,
                      width: width,
                      margin: EdgeInsets.only(top: 5.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: (_image == null && args.toUpdate)
                            ? NetworkImage(args.postImageUrl)
                            : FileImage(
                                _image,

                                //fit: BoxFit.fitWidth,
                              ),
                      )),
                    ),
                  if (args.toUpdate != true)
                    SizedBox(
                      height: 50,
                    ),
                  if (args.toUpdate != true)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey[300]),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Text(
                                'Add to your recipe',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                //Icon(
                                //  Icons.video_call,
                                //  size: 30.0,
                                // ),
                                IconButton(
                                  icon: Icon(
                                    Icons.photo_library_outlined,
                                    size: 25.0,
                                  ),
                                  tooltip: 'Upload image',
                                  onPressed: () {
                                    _showPicker(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            if (isVisible)
              Opacity(
                opacity: 0.5,
                child: Container(
                    height: height, width: width, color: Colors.black),
              ),
            if (isVisible)
              Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xff006043)),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

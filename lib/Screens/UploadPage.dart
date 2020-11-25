import 'dart:io';
import 'package:cook_chef/Firestore/CloudStorage.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:provider/provider.dart';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadPage extends StatefulWidget {
  static const String id = 'upload_page';
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  File _image;
  CloudStorage _cloudStorage = CloudStorage();
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload'),
        actions: [
          Center(
                      child: GestureDetector(
              onTap: () async{
                await _cloudStorage.uploadFile(_image);
              },
              child: Text(
                'Share',
                style: TextStyle(color: Colors.lightBlueAccent),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.account_circle),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      'User Name',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            Expanded(
              child: Container(
                child: Text('What\'s your recipe'),
              ),
            ),
            if (_image != null)
              Image.file(
                _image,
                width: 100,
                height: 100,
                fit: BoxFit.fitHeight,
              ),
            Container(
              padding: EdgeInsets.all(5.0),
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
                        'Add to your post',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.video_call),
                        SizedBox(
                          width: 5.0,
                        ),
                        IconButton(
                          icon: Icon(Icons.photo_library_outlined),
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
    );
  }
}

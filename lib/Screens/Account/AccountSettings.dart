import 'dart:io';
import 'package:cook_chef/Firestore/CloudFirestore.dart';
import 'package:cook_chef/Firestore/CloudStorage.dart';
import 'package:cook_chef/Screens/Account/AboutPage.dart';
import 'package:cook_chef/Screens/Authentication/UpdateEmail.dart';
import 'package:cook_chef/Screens/Authentication/UpdatePassword.dart';
import 'package:flutter/material.dart';
import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

enum HomeOptions { about, logout, updatePassword, updateEmail }

class AccountSettings extends StatefulWidget {
  static final id = 'account_settings';

  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  bool isMaleChecked = false;
  bool isFemaleChecked = false;
  String imageLink;
  TextEditingController _nameEditingController;
  TextEditingController _bioEditingController;
  CloudFirestore _cloudFirestore = CloudFirestore();
  CloudStorage _cloudStorage = CloudStorage();
  bool switchValue = true;
  @override
  void initState() {
    super.initState();
    _nameEditingController = TextEditingController();
    _bioEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _nameEditingController.dispose();
    _bioEditingController.dispose();
  }

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
    String uid = Provider.of<AuthenticationService>(context).uniqueId;
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    void _selectOption(HomeOptions option) {
      switch (option) {
        case HomeOptions.updatePassword:
          Navigator.pushNamed(context, UpdatePassword.id);
          break;
        case HomeOptions.updateEmail:
          Navigator.pushNamed(context, UpdateEmail.id);
          break;

        case HomeOptions.about:
          Navigator.pushNamed(context, About.id);
          break;
        case HomeOptions.logout:
          context.read<AuthenticationService>().signOut();
          Navigator.pop(context);
          break;
      }
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
          ),
          title: Text('Edit Profile'),
          actions: [
            PopupMenuButton<HomeOptions>(
              icon: Icon(Icons.settings),
              tooltip: "Settings",
              onSelected: _selectOption,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<HomeOptions>(
                    child: PopUpItem(
                      height: _height,
                      iconName: 'Update Password',
                      width: _width,
                    ),
                    value: HomeOptions.updatePassword,
                  ),
                  PopupMenuItem<HomeOptions>(
                    child: PopUpItem(
                      height: _height,
                      iconName: 'Update Email',
                      width: _width,
                    ),
                    value: HomeOptions.updateEmail,
                  ),
                  PopupMenuItem<HomeOptions>(
                    child: PopUpItem(
                      height: _height,
                      iconName: 'About',
                      width: _width,
                    ),
                    value: HomeOptions.about,
                  ),
                  PopupMenuItem<HomeOptions>(
                    child: PopUpItem(
                      height: _height,
                      width: _width,
                      iconName: 'Logout ',
                    ),
                    value: HomeOptions.logout,
                  ),
                ];
              },
            ),
          ],
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: _width * 0.01),
              child: Column(
                children: [
                  SizedBox(
                    height: _height * 0.05,
                  ),
                  Stack(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: (_image == null)
                            ? NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg')
                            : FileImage(_image),
                        maxRadius: _height * 0.09,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          color: Colors.white,
                          child: GestureDetector(
                            onTap: () {
                              _showPicker(context);
                            },
                            // child: Text(
                            //   'Change profile pic',
                            //   style: TextStyle(
                            //       fontSize: _height * 0.02,
                            //       fontWeight: FontWeight.w700,
                            //       color: Colors.lightBlueAccent),
                            // ),
                            child: Icon(
                              Icons.add_a_photo,
                              size: 25.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: _height * 0.03,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      controller: _nameEditingController,
                      autofocus: true,
                      cursorColor: Colors.lightBlueAccent,
                      cursorRadius: Radius.circular(3),
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        labelText: 'User Name',
                        focusColor: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      controller: _bioEditingController,
                      autofocus: true,
                      cursorColor: Colors.lightBlueAccent,
                      cursorRadius: Radius.circular(3),
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintText: 'Bio',
                        labelText: 'Bio',
                        focusColor: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _height * 0.05,
                  ),
                  if (_image != null &&
                      _nameEditingController.text.isNotEmpty &&
                      _bioEditingController.text.isNotEmpty)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff00ac58),
                      ),
                      child: MaterialButton(
                        onPressed: () async {
                          if (_image != null &&
                              _nameEditingController.text.isNotEmpty &&
                              _bioEditingController.text.isNotEmpty) {
                            imageLink = await _cloudStorage.uploadFile(
                                _image, 'Users', uid);
                            await _cloudFirestore.updateUser(
                                _nameEditingController.text,
                                _bioEditingController.text,
                                imageLink);

                            Navigator.pop(context);
                          }
                        },
                        child: Text(
                          'UPDATE',
                          style: TextStyle(color: Colors.white),
                        ),
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

class PopUpItem extends StatelessWidget {
  final double width;
  final double height;
  final IconData iconData;
  final String iconName;
  PopUpItem({this.height, this.width, this.iconName, this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.5,
      child: Align(
        alignment: Alignment.topRight,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 5),
          title: Text(iconName),
          //onTap: () {},
          //enabled: true,
        ),
      ),
    );
  }
}

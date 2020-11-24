import 'package:cook_chef/Screens/UpdateEmail.dart';
import 'package:cook_chef/Screens/UpdatePassword.dart';
import 'package:flutter/material.dart';
import 'package:cook_chef/Auth/AuthenticationService.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'dart:io';

enum HomeOptions { notification, about, logout }

class AccountSettings extends StatefulWidget {
  static final id = 'account_settings';

  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  bool isMaleChecked = false;
  bool isFemaleChecked = false;
  TextEditingController _nameEditingController;
  TextEditingController _bioEditingController;
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
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    void _selectOption(HomeOptions option) {
      switch (option) {
        case HomeOptions.notification:
          setState(() {
            switchValue = !switchValue;
          });
          break;
        case HomeOptions.about:
          Navigator.pushNamed(context, 'hi');
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
          title: Text('Edit Profile'),
          centerTitle: true,
          actions: [
            PopupMenuButton<HomeOptions>(
              icon: Icon(Icons.settings),
              tooltip: "Settings",
              onSelected: _selectOption,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<HomeOptions>(
                    child: ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text('Noti'),
                      //onTap: () {},
                      enabled: true,
                      trailing: Switch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                            print(value);
                          });
                        },
                      ),
                    ),
                    value: HomeOptions.notification,
                  ),
                  PopupMenuItem<HomeOptions>(
                    child: PopUpItem(
                      height: _height,
                      iconName: 'About',
                      iconData: Icons.error_outline,
                      width: _width,
                    ),
                    value: HomeOptions.about,
                  ),
                  PopupMenuItem<HomeOptions>(
                    child: PopUpItem(
                      height: _height,
                      width: _width,
                      iconName: 'Logout',
                      iconData: Icons.logout,
                    ),
                    value: HomeOptions.logout,
                  ),
                ];
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.01),
            child: Column(
              children: [
                SizedBox(
                  height: _height * 0.1,
                ),
                CircleAvatar(
                  backgroundImage: (_image == null)
                      ? NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg')
                      : FileImage(_image),
                  maxRadius: _height * 0.05,
                ),
                SizedBox(
                  height: _height * 0.07,
                ),
                GestureDetector(
                  onTap: () {
                    _showPicker(context);
                  },
                  child: Text(
                    'Change profile pic',
                    style: TextStyle(
                        fontSize: _height * 0.02,
                        fontWeight: FontWeight.w700,
                        color: Colors.lightBlueAccent),
                  ),
                ),
                SizedBox(
                  height: _height * 0.1,
                ),
                TextField(
                  controller: _nameEditingController,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.lightBlueAccent,
                  cursorRadius: Radius.circular(3),
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    labelText: 'Name',
                    focusColor: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: _height * 0.04,
                ),
                TextField(
                  controller: _bioEditingController,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  cursorColor: Colors.lightBlueAccent,
                  cursorRadius: Radius.circular(3),
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: 'Bio',
                    labelText: 'Bio',
                    focusColor: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: _height * 0.1,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 1.0)),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text('UPDATE'),
                  ),
                )
              ],
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
          leading: Icon(iconData),
          contentPadding: EdgeInsets.symmetric(horizontal: 5),
          title: Text(iconName),
          //onTap: () {},
          enabled: true,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Ingredients {
  String text;
  bool isChecked;
  //AssetImage image;
  Ingredients({String text, bool isChecked = false});

  void toggleCheckBox() {
    isChecked = !isChecked;
  }
}

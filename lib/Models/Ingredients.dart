import 'package:flutter/material.dart';

class Ingredients {
  String text;
  bool isChecked = false;
  //AssetImage image;
  Ingredients({String text}) {
    this.text = text;
  }

  void toggleCheckBox() {
    isChecked = !isChecked;
  }

  @override
  String toString() {
    return (text);
  }
}

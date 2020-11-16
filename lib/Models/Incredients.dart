import 'package:flutter/material.dart';

class Incredients {
  String text;
  bool isChecked;
  AssetImage image;
  Incredients({AssetImage image, String text, bool isChecked = false});

  void toggleCheckBox() {
    isChecked = !isChecked;
  }
}

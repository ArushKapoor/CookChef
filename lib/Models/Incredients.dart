class Incredients {
  String text;
  bool isChecked;
  String imageUrl;
  Incredients({this.text, this.isChecked = false, this.imageUrl});

  void toggleCheckBox() {
    isChecked = !isChecked;
  }
}

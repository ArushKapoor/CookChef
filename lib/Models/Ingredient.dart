class Ingredients {
  String text;
  bool isChecked;
  String imageUrl;
  Ingredients({this.text, this.isChecked = false, this.imageUrl});

  void toggleCheckBox() {
    isChecked = !isChecked;
  }
}

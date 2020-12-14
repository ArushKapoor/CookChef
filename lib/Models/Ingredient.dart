class Ingredients {
  String text;
  bool isChecked;
  String imageUrl;
  String hindiText;
  Ingredients(
      {this.text, this.isChecked = false, this.imageUrl, this.hindiText});

  void toggleCheckBox() {
    isChecked = !isChecked;
  }

  @override
  String toString() {
    String text;
    text =
        'Ingredients(text: \'${this.text}\', imageUrl: \'$imageUrl\', hindiText: \'$hindiText\',)';
    return text;
  }
}

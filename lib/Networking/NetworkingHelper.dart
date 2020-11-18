import 'dart:convert';
import 'package:csv/csv.dart';
import 'dart:io';
import 'package:flutter/services.dart';

class NetworkingHelper {
  static Directory get current {
    final IOOverrides overrides = IOOverrides.current;
    if (overrides == null) {
      return Directory.current;
    }
    return overrides.getCurrentDirectory();
  }

  readFilesFromAssets() async {
    // Users can load any kind of files like txt, doc or json files as well
    String assetContent = await rootBundle.loadString('assets/ingredients.csv');
    return assetContent;
  }

  Future<void> helper() async {
    final input = await readFilesFromAssets();
    print(input);
    // final input = File(filePath).openRead();

    final fields = await input
        .transform(utf8.decoder)
        .transform(new CsvToListConverter())
        .toList();
    print(fields);
  }
}

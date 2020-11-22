import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  Future<dynamic> getData(String url) async {
    http.Response response = await http.get(Uri.encodeFull(url));
    if (response.statusCode == 200) {
      String data = response.body;
      return json.decode(data);
    } else {
      print(response.statusCode);
    }
  }
}

import 'package:http/http.dart' as http;

class Networking {
  String url;
  Networking({String url});
  Future getData(String q) async {
    http.Response response = await http.get(Uri.encodeFull(url));
    if (response.statusCode == 200) {
      String data = response.body;
      return data;
    } else {
      print(response.statusCode);
    }
  }
}

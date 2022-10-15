import '../models/matematicon.dart';
import 'package:http/http.dart' as http;

class RemoteServiceMatematicon {
  Future<List<Matematicon>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse(
        'https://www.matematicon.ro/_teste-grila-json/menu_clasa.php');

    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return matematiconFromJson(json);
    } else {
      return null;
    }
  }
}

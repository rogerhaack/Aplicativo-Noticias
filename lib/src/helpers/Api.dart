import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  String utlBase = "https://www.jornalnh.com.br/_conteudo/json";

  getRequest(String path) async {
    http.Response response = await http.get(this.utlBase + path);

    return decode(response);
  }

  decode(http.Response response) {
    if (response.statusCode == 200) {
      return {"status": 200, "data": json.decode(response.body)};
    } else {
      return {"status": response.statusCode, "data": ""};
    }
  }

}

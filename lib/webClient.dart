import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:swiggy_app/prefmanager/prefmanager.dart';

/////33333
class WebClient {
  static const baseUrl = "http://192.168.53.13:5050";

  static const imageUrl = "https://parishprojects.herokuapp.com/file/get/";

  static Future<dynamic> post(url, data) async {
    var token = await PrefManager.getToken();
    // print(token + "ddd");
    Map? sendData = {};
    if (data?.isNotEmpty ?? false) {
      sendData.addAll(data);
    }

    var body = json.encode(sendData);
    var response = await http.post(
      Uri.parse(baseUrl + url),
      headers: {"Content-Type": "application/json", "token": token ?? ""},
      body: body,
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      var error = {
        "status": false,
        "msg": "Invalid Request",
      };

      return error;
    }
  }

  static Future<dynamic> get(url) async {
    var token = await PrefManager.getToken();
    print(token);
    var response = await http.get(Uri.parse(baseUrl + url),
        headers: {"Content-Type": "application/json", "token": token ?? ""});

    if (response.statusCode == 200) {
      print(response.statusCode);
      return jsonDecode(response.body);
    } else {
      var error = {
        "status": false,
        "msg": "Invalid Request",
      };
      return error;
    }
  }
}

import 'dart:convert';
import 'package:final_exam/model/corona_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<HomeModal?> coronaApiCall(String country) async {
    String apiLink = "https://covid-19-tracking.p.rapidapi.com/v1/$country?=&=";
    var response = await http.get(Uri.parse(apiLink), headers: {
      "X-RapidAPI-Key": "2ec5469b06msh2197869a39425dbp1720d4jsnc70ff410f626",
      "X-RapidAPI-Host": "covid-19-tracking.p.rapidapi.com"
    });

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      HomeModal homeModal = HomeModal.fromJson(json);

      return homeModal;
    }
    return null;
  }
}

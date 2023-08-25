import 'package:flutter/material.dart';

import '../model/corona_model.dart';
import '../utils/corona-helper.dart';

class HomeProvider extends ChangeNotifier {
  ApiHelper apiHelper = ApiHelper();
  HomeModal homeModal = HomeModal();
  TextEditingController countryc = TextEditingController();
  String country = "india";

  Future<void> coronaApiGet() async {
    var response = await apiHelper.coronaApiCall(country);
    homeModal = response!;
    notifyListeners();
  }

  void search() {
    country = countryc.text;
    notifyListeners();
  }
}

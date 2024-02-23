import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import '../models/country_model.dart';
import '../services/network_services.dart';

class CountryProvider {
  ///// Fetch CountryList Data /////////
  Future<dynamic> getCountryList() async {
    try {
      final NetworkServices apiService = NetworkServices();
      String url = "all";
      Response response = await apiService.getResponse(url);
      if (response.statusCode == 200) {
        List? body = jsonDecode(response.body);

        List<CountryModel> responseData =
            body?.map((dynamic item) => CountryModel.fromJson(item)).toList() ??
                [];
        return responseData;
      }
    } catch (error) {
      debugPrint("Error While fetching the Country  data === $error");
    }
  }
}

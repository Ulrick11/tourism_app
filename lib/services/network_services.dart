import 'dart:io';
import 'package:countrys_app/services/response_services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

import 'app_exceptions.dart';

class NetworkServices{
  /// Main Domain Url
  final String domainUrl = "https://restcountries.com/v3.1/";

/// Function for  getting the header
Future<Map<String, String>> get headers async {
  Map<String, String> headers = {};
  headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
  return headers;
}

/// Function for  getting the full Parse Url
Uri getFullUrl(String url) {
  String fullPath = domainUrl + url ;
  debugPrint('*** Complete Url Path ***** \n $fullPath \n');
  return Uri.parse(fullPath);
}

///  Function for Getting the response from server
Future getResponse(String url) async {
  dynamic responseJson;
  try {
    debugPrint('***GET Url ==> $url \n');
    final response = await http.get(
      getFullUrl(url),
      headers: await headers,
    );
    debugPrint('API Service GET response');
    debugPrint(response.body);
    /// returnResponse method check response and return data based on response from server
    responseJson = returnResponse(response);
  } on SocketException catch (e) {
    debugPrint('We got the exception in Get api call $e');
    throw FetchDataException(e.message);
  }
  return responseJson;
}
}
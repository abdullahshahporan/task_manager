import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:task_manager/data/models/network_responses.dart';

class NetworkCaller {
  Future<NetworkResponse> getRequest(String url) async {
    try {
      Uri uri = Uri.parse(url);
      debugPrint(url);
      final Response response = await get(uri);
      PrintResponse(url, response);
      if (response.statusCode == 200) {
        final decodeData = jsonDecode(response.body);
        return NetworkResponse(
            isSuccess: true,
            StatusCode: response.statusCode,
            ResponseData: decodeData);
      } else {
        return NetworkResponse(
            isSuccess: false, StatusCode: response.statusCode);
      }
    }
    catch (e) {
      return NetworkResponse(
          isSuccess: false, StatusCode: -1, errorMessage: e.toString());
    }
  }
  Future<NetworkResponse> postRequest(String url,Map<String,dynamic>? body) async {
    try {
      Uri uri = Uri.parse(url);
      debugPrint(url);
      final Response response = await post(uri,
          headers: {
        'Content-Type' : 'application/json'
          },
          body:jsonEncode(body));
      PrintResponse(url, response);
      if (response.statusCode == 200) {
        final decodeData = jsonDecode(response.body);
        return NetworkResponse(
            isSuccess: true,
            StatusCode: response.statusCode,
            ResponseData: decodeData);
      } else {
        return NetworkResponse(
            isSuccess: false, StatusCode: response.statusCode);
      }
    }
    catch (e) {
      return NetworkResponse(
          isSuccess: false, StatusCode: -1, errorMessage: e.toString());
    }
  }

 static void PrintResponse(String url, Response response) {
    return debugPrint(
      'URL: $url\nRESPONSE CODE: ${response.statusCode}\nBODY: ${response.body}',
    );
  }
}

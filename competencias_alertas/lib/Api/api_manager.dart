import 'package:flutter_auths/Api/newsInfo.dart';
import 'package:flutter_auths/Api/strings.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_auths/Api/Api_Manager.dart';
import 'package:flutter_auths/Api/newsInfo.dart';
import 'package:flutter_auths/Api/strings.dart';
import 'package:intl/intl.dart';

// ignore: camel_case_types
class API_Manager {
  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsModel;

    try {
      var response = await client.get(Strings.news_url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsModel = NewsModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }

    return newsModel;
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class AppController extends GetxController {
  static AppController instance = Get.find();
  var targetName = ''.obs;
  Map data = {};

  // multi/single select
  var agesList = ["50+", "40-49", "30-39", "20-29", "19-"].obs;
  var chosenAges = [].obs;
  var chosenAgesPrev = [].obs;
  

  String surveyId = '';
  void initApp() async {
    surveyId = Get.parameters["id"] ?? '0';
    if (surveyId != '0') {
      var url = Uri.parse(
          'https://us-central1-capsulab-d2ed7.cloudfunctions.net/survey/$surveyId');
      var response = await get(url);
      data = jsonDecode(response.body) as Map;
      targetName.value = data['targetName'].toString();
    }
  }

  void setEventName(String name) => data['eventName'] = name.toString();
  




  /// send http request with all the data from the survey
  void sendData(BuildContext context) async {
    data['status'] = 'done';
    var url = Uri.parse(
        'https://us-central1-capsulab-d2ed7.cloudfunctions.net/survey/$surveyId');
    data.forEach((key, value) {
      data[key] = value.toString();
    });
    var response = await put(url, body: data);
    final snackBar = SnackBar(
      content: Text(response.body.toString()),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

    // Find the ScaffoldMessenger in the widget tree
    // and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}


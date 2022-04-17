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
  var timeToPersonalisList = ["0-5", "6-10", "11+"].obs;
  var chosenTimeToPersonalis = [].obs;
  var chosenTimeToPersonalisPrev = [].obs;
  var customerNeedList =
      ["אדום", "כחול ירוק אדום", "אסף הגני", "אסף הגני גם"].obs;
  var chosenCustomerNeedList = [].obs;
  var capsuleAdditivesList = [
    "אדום",
    "כחול ירוק אדום",
    "אסף הגני",
    "אסף הגני גם",
    "אדום",
    "כחול ירוק אדום",
    "אסף הגני",
    "אסף הגני גם",
    "אדום",
    "כחול ירוק אדום",
    "אסף הגני",
    "אסף הגני גם",
    "אדום",
    "כחול ירוק אדום",
    "אסף הגני",
    "אסף הגני גם"
  ].obs;
  var chosenCapsuleAdditivesList = [].obs;
  var chosenOperationProblemsPrev = [].obs;
  var chosenOperationProblems = [].obs;
  var OperationProblemsList = ["כן", "לא"].obs;

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

  void setCustomerName(String name) => data['customerName'] = name.toString();
  void setCustomerAge(String ages) => data['customerAge'] = ages.toString();
  void setOperationTime(String time) => data['operationTime'] = time.toString();
  void setCustomerNeeds(List needs) => data['customerNeeds'] = needs.toString();
  void setCpasuleAdditives(List additives) =>
      data['capsuleAdditives'] = additives.toString();
  void setOperationWentSmooth(String smooth) =>
      data['operationWentSmooth'] = smooth.toString();
  void setOperationNotes(String notes) =>
      data['operationNotes'] = notes.toString();
  void setProductSatisfaction(double grade) =>
      data['productSatisfaction'] = grade.toString();
  void setProductNotes(String notes) => data['productNotes'] = notes.toString();
  void setAdditionalNotes(String notes) =>
      data['additionalNotes'] = notes.toString();

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


import 'dart:convert'; // For jsonDecode
import 'package:flutter/services.dart';
import 'package:mci_technical_task/model/training.dart'; // For rootBundle

Future<Training> loadJsonFromAssets() async {
  final String response = await rootBundle.loadString('assets/trainingsplan.json');
  final Map<String, dynamic> decodedJson = jsonDecode(response);

  //use freezed factory method fromJson() to convert trainingsplan.json to object
  Training traingsPlan = Training.fromJson(decodedJson);

  // Use the `DataModel` object
  print(traingsPlan);

  return traingsPlan;
}

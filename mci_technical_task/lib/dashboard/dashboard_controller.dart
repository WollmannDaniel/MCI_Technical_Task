import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/model/training.dart';

class DashboardController extends GetxController {
  Rx<Training> training = Rx<Training>(const Training(
    name: '',
    description: '',
    duration: 0,
    category: '',
    split: '',
    exercises: [],
    trainingFinished: false,
  ));
  
  void setTrainingData(Training training) {
    this.training.value = training;
  }
}

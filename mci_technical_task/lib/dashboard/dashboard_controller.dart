import 'dart:async';
import 'package:get/get.dart';
import 'package:mci_technical_task/firebase/firebase_controller.dart';
import 'package:mci_technical_task/model/training.dart';

class DashboardController extends GetxController {
  final FirebaseController firebaseController = Get.find();

  //current training from json
  Rx<Training> training = Rx<Training>(const Training(
    name: '',
    description: '',
    duration: 0,
    category: '',
    split: '',
    exercises: [],
    trainingFinished: false,
  ));

  //last loaded training from firestore
  Rx<Training> lastTraining = Rx<Training>(const Training(
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

  Future<void> loadLastTrainingFromFirestore() async {
    try {
      String? userID = firebaseController.getUserId();
      print("userID load: $userID");

      if(userID != null) {
        Training? lastTraining = await firebaseController.loadLastTrainingFromFirestore(userID);
        if(lastTraining != null) {
          this.lastTraining.value = lastTraining;
        }
      }
    } catch (e) {
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }
}

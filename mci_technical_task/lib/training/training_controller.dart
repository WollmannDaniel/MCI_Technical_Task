import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/login/login_controller.dart';
import 'package:mci_technical_task/model/exercise.dart';
import 'package:mci_technical_task/model/sets.dart';
import 'package:mci_technical_task/model/training.dart';
import 'package:mci_technical_task/timer/timer_controller.dart';

class TrainingController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final LoginController loginController = Get.find();

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

  void setTrainingData(Training training) {
    //set state
    this.training.value = training;
  }

  void incrementWeight(String exerciseName) {
    _modifyWeightHelper(1, exerciseName);
  }

  void decrementWeight(String exerciseName) {
    _modifyWeightHelper(-1, exerciseName);
  }

  //modify weight of exercise by value provided by parameter
  void _modifyWeightHelper(int modifyValue, String exerciseName) {
    List<Exercise> modifiableExercises = List.from(training.value.exercises);
    int activeSet = modifiableExercises
        .firstWhere((exercise) => exercise.name == exerciseName)
        .activeSet;
    Exercise currentExercise =
        modifiableExercises.firstWhere((exercise) => exercise.name == exerciseName);
    int indexOfExercise = modifiableExercises.indexOf(currentExercise);
    List<MySet> modifiableSets = List.from(modifiableExercises[indexOfExercise].sets);

    modifiableSets[activeSet] = modifiableSets[activeSet].copyWith(
        weight: modifiableSets[activeSet]
            .weight
            .copyWith(amount: modifiableSets[activeSet].weight.amount + modifyValue));

    modifiableExercises[indexOfExercise] =
        modifiableExercises[indexOfExercise].copyWith(sets: modifiableSets);

    //set state
    training.value = training.value.copyWith(exercises: modifiableExercises);
  }

  void incrementReps(String exerciseName) {
    _modifyRepsHelper(1, exerciseName);
  }

  void decrementReps(String exerciseName) {
    _modifyRepsHelper(-1, exerciseName);
  }

  void _modifyRepsHelper(int modifyValue, String exerciseName) {
    List<Exercise> modifiableExercises = List.from(training.value.exercises);
    int activeSet = modifiableExercises
        .firstWhere((exercise) => exercise.name == exerciseName)
        .activeSet;
    Exercise currentExercise =
        modifiableExercises.firstWhere((exercise) => exercise.name == exerciseName);
    int indexOfExercise = modifiableExercises.indexOf(currentExercise);
    List<MySet> modifiableSets = List.from(modifiableExercises[indexOfExercise].sets);

    modifiableSets[activeSet] = modifiableSets[activeSet].copyWith(
        reps: modifiableSets[activeSet]
            .reps
            .copyWith(amount: modifiableSets[activeSet].reps.amount + modifyValue));

    modifiableExercises[indexOfExercise] =
        modifiableExercises[indexOfExercise].copyWith(sets: modifiableSets);

    //set state
    training.value = training.value.copyWith(exercises: modifiableExercises);
  }

  void incrementActiveSet(
      String exerciseName, TimerController timerController) {
    List<Exercise> modifiableExercises = List.from(training.value.exercises);
    Exercise currentExercise =
        modifiableExercises.firstWhere((exercise) => exercise.name == exerciseName);
    int indexOfExercise = modifiableExercises.indexOf(currentExercise);
    List<MySet> modifiableSets = List.from(modifiableExercises[indexOfExercise].sets);

    int reps = currentExercise.sets[currentExercise.activeSet].reps.amount;
    int weight = currentExercise.sets[currentExercise.activeSet].weight.amount;

    //calculate E1RM
    double e1rm = _calculateE1RM(reps, weight);

    //set calculated max rep
    modifiableSets[currentExercise.activeSet] =
        modifiableSets[currentExercise.activeSet].copyWith(calculatedMaxRep: e1rm);

    //set new sets
    modifiableExercises[indexOfExercise] =
        modifiableExercises[indexOfExercise].copyWith(sets: modifiableSets);

    //trigger timer
    _triggerTimer(modifiableExercises[indexOfExercise].breakTime, timerController);

    if (modifiableExercises[indexOfExercise].activeSet + 1 ==
        modifiableExercises[indexOfExercise].sets.length) {
      //set exercise to done
      modifiableExercises[indexOfExercise] = modifiableExercises[indexOfExercise].copyWith(
          exerciseDone: true,
          activeSet: modifiableExercises[indexOfExercise].activeSet + 1);
    } else {
      //increment active set
      modifiableExercises[indexOfExercise] = modifiableExercises[indexOfExercise]
          .copyWith(activeSet: modifiableExercises[indexOfExercise].activeSet + 1);
    }

    //check if training is finished
    if (modifiableExercises.every((exercise) => exercise.exerciseDone)) {
      setTrainingToFinished();
    }

    //set state
    training.value = training.value.copyWith(exercises: modifiableExercises);
  }

  void setTrainingToFinished() {
    training.value = training.value.copyWith(trainingFinished: true);
  }

  double _calculateE1RM(int reps, int weight) {
    double e1rm = weight * (1 / (0.522 + 0.419 * exp(-0.055 * reps)));

    return e1rm;
  }

  void _triggerTimer(int breakTime, TimerController timerController) {
    //set timer to break time
    timerController.setTime(breakTime);
    //start timer
    timerController.startTimer();
  }

  //save training to firestore
  Future<void> saveTrainingToFirestore() async {
    try {
      final userID = loginController.getUserId();

      print(userID);

      await _firestore
          .collection('users')
          .doc(userID)
          .set(training.value.toJson());

      Get.back();

      Get.snackbar('Training saved', 'Training saved to Firestore', snackPosition: SnackPosition.BOTTOM);
      
    } catch (e) {
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }
}

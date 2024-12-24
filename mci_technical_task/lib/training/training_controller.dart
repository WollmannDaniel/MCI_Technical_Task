import 'dart:math';

import 'package:get/get.dart';
import 'package:mci_technical_task/model/exercise.dart';
import 'package:mci_technical_task/model/sets.dart';
import 'package:mci_technical_task/model/training.dart';
import 'package:mci_technical_task/timer/timer_controller.dart';
import 'package:mci_technical_task/utils/helper.dart';

class TrainingController extends GetxController {
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

  void incrementWeight(String exerciseName) {
    _modifyWeightHelper(1, exerciseName);
  }

  void decrementWeight(String exerciseName) {
    _modifyWeightHelper(-1, exerciseName);
  }

  void _modifyWeightHelper(int modifyValue, String exerciseName) {
    Training tempTraining = training.value;
    List<Exercise> tempExercises = List.from(tempTraining.exercises);
    int activeSet = tempExercises
        .firstWhere((exercise) => exercise.name == exerciseName)
        .activeSet;
    Exercise currentExercise =
        tempExercises.firstWhere((exercise) => exercise.name == exerciseName);
    int indexOfExercise = tempExercises.indexOf(currentExercise);

    List<MySet> tempSets = List.from(tempExercises[indexOfExercise].sets);

    tempSets[activeSet] = tempSets[activeSet].copyWith(
        weight: tempSets[activeSet]
            .weight
            .copyWith(amount: tempSets[activeSet].weight.amount + modifyValue));

    tempExercises[indexOfExercise] =
        tempExercises[indexOfExercise].copyWith(sets: tempSets);

    training.value = training.value.copyWith(exercises: tempExercises);
  }

  void incrementReps(String exerciseName) {
    _modifyRepsHelper(1, exerciseName);
  }

  void decrementReps(String exerciseName) {
    _modifyRepsHelper(-1, exerciseName);
  }

  void _modifyRepsHelper(int modifyValue, String exerciseName) {
    List<Exercise> tempExercises = List.from(training.value.exercises);
    int activeSet = tempExercises
        .firstWhere((exercise) => exercise.name == exerciseName)
        .activeSet;
    Exercise currentExercise =
        tempExercises.firstWhere((exercise) => exercise.name == exerciseName);
    int indexOfExercise = tempExercises.indexOf(currentExercise);

    List<MySet> tempSets = List.from(tempExercises[indexOfExercise].sets);

    tempSets[activeSet] = tempSets[activeSet].copyWith(
        reps: tempSets[activeSet]
            .reps
            .copyWith(amount: tempSets[activeSet].reps.amount + modifyValue));

    tempExercises[indexOfExercise] =
        tempExercises[indexOfExercise].copyWith(sets: tempSets);

    training.value = training.value.copyWith(exercises: tempExercises);
  }

  void incrementActiveSet(
      String exerciseName, TimerController timerController) {
    List<Exercise> tempExercises = List.from(training.value.exercises);
    Exercise currentExercise =
        tempExercises.firstWhere((exercise) => exercise.name == exerciseName);
    int indexOfExercise = tempExercises.indexOf(currentExercise);

    List<MySet> tempSets = List.from(tempExercises[indexOfExercise].sets);

    int reps = currentExercise.sets[currentExercise.activeSet].reps.amount;
    int weight = currentExercise.sets[currentExercise.activeSet].weight.amount;

    //calculate E1RM
    double e1rm = _calculateE1RM(reps, weight);

    //set calculated max rep
    tempSets[currentExercise.activeSet] =
        tempSets[currentExercise.activeSet].copyWith(calculatedMaxRep: e1rm);

    //set new sets
    tempExercises[indexOfExercise] =
        tempExercises[indexOfExercise].copyWith(sets: tempSets);

    //trigger timer
    _triggerTimer(tempExercises[indexOfExercise].breakTime, timerController);

    if (tempExercises[indexOfExercise].activeSet + 1 ==
        tempExercises[indexOfExercise].sets.length) {
      //set exercise to done
      tempExercises[indexOfExercise] = tempExercises[indexOfExercise].copyWith(
          exerciseDone: true,
          activeSet: tempExercises[indexOfExercise].activeSet + 1);
    } else {
      //increment active set
      tempExercises[indexOfExercise] = tempExercises[indexOfExercise]
          .copyWith(activeSet: tempExercises[indexOfExercise].activeSet + 1);
    }

    //check if training is finished
    if (tempExercises.every((exercise) => exercise.exerciseDone)) {
      setTrainingToFinished();
    }

    //set state
    training.value = training.value.copyWith(exercises: tempExercises);
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
}

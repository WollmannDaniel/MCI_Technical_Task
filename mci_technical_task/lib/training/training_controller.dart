import 'package:get/get.dart';
import 'package:mci_technical_task/model/exercise.dart';
import 'package:mci_technical_task/model/sets.dart';
import 'package:mci_technical_task/model/training.dart';
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

  void _modifyWeightHelper(int modifyValue, String exerciseName){
    Training tempTraining = training.value;
    List<Exercise> tempExercises = List.from(tempTraining.exercises);
    int activeSet = tempExercises.firstWhere((exercise) => exercise.name == exerciseName).activeSet;

    for(int exerciseIndex = 0; exerciseIndex < tempExercises.length; exerciseIndex++){
      if (tempExercises[exerciseIndex].name == exerciseName) {
        List<MySet> tempSets = List.from(tempExercises[exerciseIndex].sets);

        tempSets[activeSet] = tempSets[activeSet].copyWith(weight: tempSets[activeSet].weight.copyWith(amount: tempSets[activeSet].weight.amount + modifyValue));

        tempExercises[exerciseIndex] = tempExercises[exerciseIndex].copyWith(sets: tempSets);
      }
    }

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
    int activeSet = tempExercises.firstWhere((exercise) => exercise.name == exerciseName).activeSet;

    for(int exerciseIndex = 0; exerciseIndex < tempExercises.length; exerciseIndex++){
      if (tempExercises[exerciseIndex].name == exerciseName) {
        List<MySet> tempSets = List.from(tempExercises[exerciseIndex].sets);

        tempSets[activeSet] = tempSets[activeSet].copyWith(reps: tempSets[activeSet].reps.copyWith(amount: tempSets[activeSet].reps.amount + modifyValue));

        tempExercises[exerciseIndex] = tempExercises[exerciseIndex].copyWith(sets: tempSets);
      }
    }

    training.value = training.value.copyWith(exercises: tempExercises);
  }

  void incrementActiveSet(String exerciseName){
    List<Exercise> tempExercises = List.from(training.value.exercises);

    for(int exerciseIndex = 0; exerciseIndex < tempExercises.length; exerciseIndex++){
      if (tempExercises[exerciseIndex].name == exerciseName) {

        if(tempExercises[exerciseIndex].activeSet + 1 == tempExercises[exerciseIndex].sets.length){
          //set exercise to done
          tempExercises[exerciseIndex] = tempExercises[exerciseIndex].copyWith(exerciseDone: true);
        }
        else
        {
          //increment active set
          tempExercises[exerciseIndex] = tempExercises[exerciseIndex].copyWith(activeSet: tempExercises[exerciseIndex].activeSet + 1);
        }
      }
    }

    training.value = training.value.copyWith(exercises: tempExercises);
  }


  void setTrainingToFinished() {
    training.value = training.value.copyWith(trainingFinished: true);
  }
}

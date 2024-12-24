import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/model/exercise.dart';
import 'package:mci_technical_task/model/training.dart';
import 'package:mci_technical_task/training/training_controller.dart';
import 'package:mci_technical_task/widgets/exersise_widget.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TrainingController trainingController = Get.find();

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text(trainingController.training.value.name),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: trainingController.training.value.exercises.length,
                  itemBuilder: (context, index) {
                    final Rx<Exercise> exercise =
                        trainingController.training.value.exercises[index].obs;
                    return ExerciseWidget(exercise: exercise);
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            child: SizedBox(
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  //safe training to firestore
                  trainingController.saveTrainingToFirestore();
                },
                child: Text('End Training'),
              ),
            )),
      );
    });
  }
}

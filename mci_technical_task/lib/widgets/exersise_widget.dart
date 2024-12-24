import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/model/exercise.dart';
import 'package:mci_technical_task/training/training_controller.dart';
import 'package:mci_technical_task/widgets/set_details_widget.dart';

class ExerciseWidget extends StatelessWidget {
  final Rx<Exercise>  exercise;

  const ExerciseWidget({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TrainingController trainingController = Get.find();

    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exercise.value.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Sets: ${exercise.value.sets.length}'),
            Text('Break Time: ${exercise.value.breakTime} seconds'),
            Text('Muscle Group: ${exercise.value.muscleGroup}'),
            Text('Equipment: ${exercise.value.equipment.join(', ')}'),
            Obx(() {
              return Column(
                      children: [
                        SetDetailsWidget(exercise: exercise),
                        !exercise.value.exerciseDone ? Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(children: [Container()],),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              trainingController.incrementReps(exercise.value.name);
                                            },
                                            child: Icon(Icons.add_box),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              trainingController.decrementReps(exercise.value.name);
                                            },
                                            child: Icon(Icons.remove_circle),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              trainingController.incrementWeight(exercise.value.name);
                                            },
                                            child: Icon(Icons.add_box),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              trainingController.decrementWeight(exercise.value.name);
                                            },
                                            child: Icon(Icons.remove_circle),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ): Container(),
                        !exercise.value.exerciseDone ? Center(
                          child: ElevatedButton(
                              onPressed: () {
                                trainingController.incrementActiveSet(exercise.value.name);
                              }, child: Text('Set done')),
                        ): Container(),
                      ],
                    );
            }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/dashboard/dashboard_controller.dart';
import 'package:mci_technical_task/model/training.dart';
import 'package:mci_technical_task/training/training_controller.dart';
import 'package:mci_technical_task/training/training_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardController dashboardController = Get.find();
    TrainingController trainingController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Training Plan heute: ${dashboardController.training.value.name}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
            const SizedBox(height: 16.0),
            Expanded(
                child: _buildExerciseList(dashboardController.training.value)),
            Obx(() {
              return dashboardController.lastTraining.value.name != ''
                  ? ElevatedButton.icon(
                      label: Text(
                          'Letztes Training: ${dashboardController.lastTraining.value.name}'),
                      onPressed: !dashboardController
                              .lastTraining.value.trainingFinished
                          ? () => {
                                trainingController.setTrainingData(
                                    dashboardController.lastTraining.value),
                                Get.to(() =>const TrainingPage()),
                              }
                          : null,
                      icon: !dashboardController
                              .lastTraining.value.trainingFinished
                          ? const Icon(Icons.close, color: Colors.red)
                          : const Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                    )
                  : const Text('Kein letztes Training vorhanden');
            }),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: SizedBox(
            height: 100,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const TrainingPage());
              },
              child: const Text('Start Training'),
            ),
          )),
    );
  }

  Widget _buildExerciseList(Training training) {
    return ListView.builder(
      itemCount: training.exercises.length,
      itemBuilder: (context, index) {
        final exercise = training.exercises[index];
        return Card(
          child: ListTile(
            title: Text(exercise.name),
            subtitle: Text(
                'Sets: ${exercise.sets.length}, Reps: ${exercise.sets[0].reps.amount} ${exercise.sets[0].reps.unit}, Weight: ${exercise.sets[0].weight.amount} ${exercise.sets[0].weight.unit}'),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/dashboard/dashboard_controller.dart';
import 'package:mci_technical_task/model/training.dart';
import 'package:mci_technical_task/training/training_page.dart';
import 'package:mci_technical_task/utils/helper.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardController dashboardController = Get.find();

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
            Expanded(child: _buildExerciseList(dashboardController.training.value)),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
          child: SizedBox(
            height: 100,
            child: ElevatedButton(
              onPressed: () {
                Get.to(TrainingPage());
              },
              child: Text('Start Training'),
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

import 'package:flutter/material.dart';
import 'package:mci_technical_task/model/training.dart';
import 'package:mci_technical_task/utils/helper.dart';

class DashboardPage extends StatelessWidget {
  final Training training;

  const DashboardPage({super.key, required this.training});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(child: _buildExerciseList(training)),
          ],
        ),
      ),
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
                'Sets: ${exercise.sets}, Reps: ${exercise.reps} ${exercise.repUnit}, Weight: ${exercise.weight} ${exercise.weightUnit}'),
          ),
        );
      },
    );
  }
}

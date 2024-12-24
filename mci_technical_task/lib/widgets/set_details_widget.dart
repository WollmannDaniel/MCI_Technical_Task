import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/model/exercise.dart';

class SetDetailsWidget extends StatelessWidget {
  final Rx<Exercise> exercise;

  const SetDetailsWidget({super.key, 
    required this.exercise,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(), //disable scrolling
      shrinkWrap: true,
      itemCount: exercise.value.sets.length,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Text('Set ${index + 1}', style: (exercise.value.activeSet == index)? const TextStyle(color: Colors.green, fontWeight: FontWeight.bold) : const TextStyle(fontWeight: FontWeight.bold),),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Text('${exercise.value.sets[index].reps.amount} ${exercise.value.sets[index].reps.unit}'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Text('${exercise.value.sets[index].weight.amount} ${exercise.value.sets[index].weight.unit} '),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Text(exercise.value.sets[index].calculatedMaxRep > 0 ? '${exercise.value.sets[index].calculatedMaxRep.toStringAsFixed(0)} ${exercise.value.sets[index].weight.unit}' : '- ${exercise.value.sets[index].weight.unit}'),
              ]),
            ),
          ],
        );
      },
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/dashboard/dashboard_controller.dart';
import 'package:mci_technical_task/dashboard/dashboard_page.dart';
import 'package:mci_technical_task/login/login_controller.dart';
import 'package:mci_technical_task/login/login_page.dart';
import 'package:mci_technical_task/model/training.dart';
import 'package:mci_technical_task/timer/timer_controller.dart';
import 'package:mci_technical_task/training/training_controller.dart';
import 'package:mci_technical_task/utils/helper.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final Training training = await loadJsonFromAssets(); //load training immediately in case of user is already authenticated

  runApp(MyApp(training: training));
}

class MyApp extends StatelessWidget {
  final Training training;

  const MyApp({super.key, required this.training});

  @override
  Widget build(BuildContext context) {

    //make controllers available globally
    final LoginController loginController = Get.put(LoginController());
    final DashboardController dashboardController = Get.put(DashboardController());
    final TrainingController trainingController = Get.put(TrainingController());
    final TimerController timerController = Get.put(TimerController());

    dashboardController.setTrainingData(training);
    trainingController.setTrainingData(training);
    bool userIsAuthenticated = loginController.isUserAuthenticated();
    
    return GetMaterialApp( //use GetMaterialApp to use routes, snackbacks, etc.
      debugShowCheckedModeBanner: false,
      title: 'MCI Technical Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: userIsAuthenticated ? DashboardPage() : LoginPage(),
    );
  }
}
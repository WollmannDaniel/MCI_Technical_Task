import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/dashboard/dashboard_page.dart';
import 'package:mci_technical_task/login/login_controller.dart';
import 'package:mci_technical_task/login/login_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //make controllers available globally
    final LoginController loginController = Get.put(LoginController());
    bool userIsAuthenticated = loginController.isUserAuthenticated();
    
    return GetMaterialApp( //use GetMaterialApp to use routes, snackbacks, etc.
      debugShowCheckedModeBanner: false,
      title: 'MCI Technical Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: userIsAuthenticated ? DashboardPage() : LoginPage(),
    );
  }
}
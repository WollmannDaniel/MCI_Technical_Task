import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/dashboard/dashboard_controller.dart';
import 'package:mci_technical_task/firebase/firebase_controller.dart';
import 'package:mci_technical_task/utils/helper.dart';

class LoginController extends GetxController {
  DashboardController dashboardController = Get.find();
  FirebaseController firebaseController = Get.find();

  Future<bool> createUser(String email, String password) async {

    bool ret = await firebaseController.createUser(email, password);

    _loadLastTrainingFromFirestore();

    return ret;
  }

  bool isUserAuthenticated() {
    return firebaseController.isUserAuthenticated();
  }

  String? getUserId() {
    return firebaseController.getUserId();
  }

  Future<bool> loginUser(String email, String password) async {

    bool ret = await firebaseController.loginUser(email, password);

    _loadLastTrainingFromFirestore();

    return ret;
  }

  Future<void> logoutUser() async {
    firebaseController.logoutUser();
  }

  void _loadLastTrainingFromFirestore() {
    dashboardController.loadLastTrainingFromFirestore();
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mci_technical_task/dashboard/dashboard_controller.dart';
import 'package:mci_technical_task/model/training.dart';
import 'package:mci_technical_task/utils/helper.dart';

class FirebaseController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Rxn<User> user = Rxn<User>(); //Rxn instead of Rx to allow null values

  RxBool isLoggedIn = false.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    user.bindStream(_auth
        .authStateChanges()); //binds user var to the authentication state changes stream from Firebase
    super.onInit();
  }

  Future<bool> createUser(String email, String password) async {
    try {
      isLoading.value = true;
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      isLoggedIn.value = true;

      Get.snackbar('Success', 'Successfully registered!',
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading.value = false;
    }

    return isLoggedIn.value;
  }

  bool isUserAuthenticated() {
    if (user.value == null) {
      return false;
    }

    return true;
  }

  String? getUserId() {
    if (user.value == null) {
      return null;
    }

    return user.value!.uid;
  }

  Future<bool> loginUser(String email, String password) async {
    try {
      isLoading.value = true;
      await _auth.signInWithEmailAndPassword(email: email, password: password);

      isLoggedIn.value = true;

      Get.snackbar('Success', 'Logged in successfully!',
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', e.toString(), snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading.value = false;
    }

    return isLoggedIn.value;
  }

  Future<void> logoutUser() async {
    await _auth.signOut();

    isLoggedIn.value = false;

    Get.snackbar('Success', 'Logged out successfully!',
        snackPosition: SnackPosition.BOTTOM);
  }

  Future<Training?> loadLastTrainingFromFirestore(String userID) async {
    DocumentSnapshot documentSnapshot =
        await _firestore.collection('users').doc(userID).get();

    print("DocumentSnapshot: ${documentSnapshot.data()}");
    
    if (documentSnapshot.exists) {
      final userData = documentSnapshot.data();

      final lastTrainingData = userData as Map<String, dynamic>;
      final lastTraining = Training.fromJson(lastTrainingData);

      return lastTraining;
    } else {
      return null;
    }
  }
}

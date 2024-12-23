import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Rxn<User> user = Rxn<User>(); //Rxn instead of Rx to allow null values

  RxBool isLoggedIn = false.obs; // Observable to track login status
  RxBool isLoading = false.obs; // Observable to track loading status

  @override
  void onInit() {
    user.bindStream(_auth
        .authStateChanges()); //binds user var to the authentication state changes stream from Firebase
    super.onInit();
  }

  Future<bool> createUser(String email, String password) async {
    try {
      isLoading.value = true;
      await _auth.createUserWithEmailAndPassword(email: email, password: password);

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
}

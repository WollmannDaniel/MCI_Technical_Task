import 'dart:async';
import 'package:get/get.dart';

class TimerController extends GetxController {
  RxInt timeRemaining = 0.obs;
  RxBool isTimerRunning = false.obs;
  Timer? _timer;

  void setTime(int time) {
    timeRemaining.value = time;
  }

  void startTimer() {
    if (_timer != null && _timer!.isActive) return; // Prevent multiple timers
    isTimerRunning.value = true; 
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeRemaining.value > 0) {
        timeRemaining.value--; // Update time
      } else {
        // Cancel timer when countdown completes
        _timer?.cancel(); 
        isTimerRunning.value = false; 
        print("Timer completed");
      }
    });
  }

  void stopTimer() {
    _timer?.cancel();
    isTimerRunning.value = false; 
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}

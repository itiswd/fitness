import 'dart:async';
import 'package:get/get.dart';

class ExercisesDetailsController extends GetxController {
  static const int maxSeconds = 20 * 60; // 20 minutes in seconds
  int remainingSeconds = maxSeconds;
  Timer? _timer;
  bool isPlaying = false;

  // Starts the timer
  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        _updateTimer();
      },
    );
  }

  // Updates the timer every second
  void _updateTimer() {
    if (remainingSeconds > 0) {
      isPlaying = true;
      remainingSeconds--;
    } else {
      _stopTimer();
    }
    update();
  }

  // Stops the timer
  void _stopTimer() {
    isPlaying = false;
    _timer?.cancel();
  }

  // Formats the time in mm:ss format
  String formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  // Toggles the timer between start and stop
  void action() {
    if (isPlaying) {
      _stopTimer();
    } else {
      startTimer();
    }
    update();
  }

  @override
  void dispose() {
    _stopTimer();
    super.dispose();
  }
}

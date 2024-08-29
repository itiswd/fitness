import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/const.dart';
import '../../../../core/service/shared_preferences_singleton.dart';

class ProgressController extends GetxController {
 

  void fetchData() async {
    final String? progressMapJson =await SharedPref.getString('progressMap');

    // Decode the JSON string if it's not empty and populate the progressMap
    if (progressMapJson?.isNotEmpty ?? false) {
      try {
        final decodedMap = jsonDecode(progressMapJson!);
        if (decodedMap is Map) {
          progressMap = decodedMap.map(
            (key, value) => MapEntry(key, Map<String, String>.from(value)),
          );
          update();
        }
      } catch (e) {
        debugPrint("Error decoding progressMapJson: $e");
      }
    }
  }
}

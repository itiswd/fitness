import 'dart:io';
import 'dart:convert';
import 'package:fitness_master/core/utils/app_router.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/bottom_nav_bar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fitness_master/core/utils/app_styles.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/widgets/custom_snack_bar.dart';
import 'package:fitness_master/core/service/shared_preferences_singleton.dart';
import 'package:fitness_master/features/progress/presentation/manager/progress_controller.dart';

class NewProgressController extends GetxController {
  String currentValueOfMonth = "January";
  String currentValueOfCategory = 'Biceps';
  File? image;
  final ImagePicker _imagePicker = ImagePicker();
  final controller = Get.find<ProgressController>();
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  final List<String> muscles = [
    'Biceps',
    'Triceps',
    'Chest',
    'Back',
    'Legs',
    'Shoulders',
    'Abs',
  ];

  void onValueChangedMonth(String? value) {
    currentValueOfMonth = value!;
    update();
  }

  void onValueChangedCategory(String? value) {
    currentValueOfCategory = value!;
    update();
  }

  Future<void> uploadImageFromGallery() async {
    final pickedImage =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image = File(pickedImage.path);
      update();
    }
  }

  Future<void> uploadImageFromCamera() async {
    final pickedImage =
        await _imagePicker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      image = File(pickedImage.path);
      update();
    }
  }

  Future<void> updateProgressMap() async {
    if (image == null || image!.path.isEmpty) {
      customSnackbar(
        title: "Error",
        message: "Please upload an image",
      );
    } else {
      final String? progressMapJson = SharedPref.getString('progressMap');
      Map<String, Map<String, String>> progressMap = {};

      if (progressMapJson != null && progressMapJson.isNotEmpty) {
        try {
          final decodedMap = jsonDecode(progressMapJson);
          if (decodedMap is Map) {
            progressMap = Map<String, Map<String, String>>.from(
              decodedMap.map((key, value) =>
                  MapEntry(key, Map<String, String>.from(value))),
            );
          }
        } catch (e) {
          debugPrint("Error decoding progressMapJson: $e");
        }
      }

      // Update the map with new data
      if (!progressMap.containsKey(currentValueOfCategory)) {
        progressMap[currentValueOfCategory] = {};
      }
      progressMap[currentValueOfCategory]![currentValueOfMonth] = image!.path;

      // Save the updated map back to SharedPreferences
      try {
        await SharedPref.setString('progressMap', jsonEncode(progressMap));
        customSnackbar(
            title: "Success", message: "Progress saved successfully");
        controller.fetchData();
        selectedIndex = 2;
        Get.offAllNamed(
          AppRouter.kBottomNavigationBar,
        );
      } catch (e) {
        debugPrint("Error saving progressMap: $e");
      }
    }
  }

  void showImagePickerOptions() {
    Get.bottomSheet(
      Container(
        color: AppColor.background,
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(
                Icons.photo_library,
                color: AppColor.white,
              ),
              title: Text(
                'Open Gallery',
                style: AppStyles.body4,
              ),
              onTap: () {
                uploadImageFromGallery();
                Get.back(); // Close the bottom sheet
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.camera_alt,
                color: AppColor.white,
              ),
              title: Text(
                'Open Camera',
                style: AppStyles.body4,
              ),
              onTap: () {
                uploadImageFromCamera();
                Get.back(); // Close the bottom sheet
              },
            ),
          ],
        ),
      ),
    );
  }
}

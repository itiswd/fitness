import 'package:flutter_screenutil/flutter_screenutil.dart';

const String kIsOnBoardingView = 'isOnBoardingView';
const String kPlanningGoal = 'planningGoal';
const String kNoOfDaysForPlanning = 'noOfDaysForPlanning';
const String kNoOfMinsForPlanning = 'noOfMinsForPlanning';
const double kHorizontalPadding = 16.0;
const kVerticalPadding = 16;
 Map<String, Map<String, String>> progressMap = {};
List premiumList = [
  'access to all exercises and articles',
  'the ability to set a goal to exercise\nmore than 4 days a week',
  'the ability to view statistics on food\nand water intake for the last year',
  'No ADS',
];

Map exercises = {
  'title': [
    'All',
    'Full Body',
    'Upper Body',
    'Lower Body',
    'Saved',
  ],
  'width': [
    72.0.w,
    100.0.w,
    140.0.w,
    140.0.w,
    100.0.w,
  ]
};
List settingsTitles = [
  'Privacy policy',
  'Terms of use',
  'Support',
  'Restore purchases',
];

Map meals = {
  'title': [
    'Calories',
    'Protein',
    'Fat',
    'Carbohydrate',
  ],
  'value': [
    10,
    30,
    15,
    45,
  ]
};

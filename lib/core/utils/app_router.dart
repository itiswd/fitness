import 'package:get/get.dart';
import '../../features/splash/presention/views/splash_view.dart';
import '../../features/settings/presentation/views/settings_view.dart';
import '../../features/progress/presentation/views/new_progrees_view.dart';
import 'package:fitness_master/features/home/presentation/views/home_view.dart';
import 'package:fitness_master/features/progress/presentation/views/progress_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/planning_view.dart';
import 'package:fitness_master/features/exercises/presentation/views/exercises_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/on_boarding_view.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/bottom_nav_bar.dart';
import 'package:fitness_master/features/exercises/presentation/views/exercise_details_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/limited_functionality_view.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/water_and_calories_view.dart';




abstract class AppRouter {
  static const String kSplashView = '/splashView';
  static const kOnBoardingView = '/onBoardingView';
  static const kPlanningView = '/planningView';
  static const kLimitedFunctionality = '/limitedFunctionality';
  static const kHomeView = '/homeView';
  static const kExercisesView = '/exercisesView';
  static const kExercisesDetails = '/exercisesDetails';
  static const kWaterAndCalories = '/waterAndCalories';
  static const kProgreesView = '/progreesView';
  static const kNewProgrees = '/newProgrees';
  static const kSettings = '/settings';
  static const kBottomNavigationBar = '/bottomNavigationBar';
 
  static final routes = [
     GetPage(
      name: kSplashView,
      page: () => const SplashView(),
    ),
    GetPage(
      name: kOnBoardingView,
      page: () => const OnBoardingView(),
    ),
    GetPage(
      name: kPlanningView,
      page: () => const PlanningView(),
    ),
    GetPage(
      name: kLimitedFunctionality,
      page: () => const LimitedFunctionalityView(),
    ),
    GetPage(
      name: kHomeView,
      page: () => const HomeView(),
    ),
    GetPage(
      name: kExercisesView,
      page: () => const ExercisesView(),
    ),
    GetPage(
      name: kExercisesDetails,
      page: () => const ExerciseDetailsView(),
    ),
    GetPage(
      name: kWaterAndCalories,
      page: () => const WaterAndCaloriesView(),
    ),
       GetPage(
      name:   kProgreesView,
      page: () => const ProgressView(),
    ),
    GetPage(
      name:   kNewProgrees,
      page: () => const NewProgreesView(),
    ),
    GetPage(
      name: kSettings,
      page: () => const SettingsView(),
    ),
    GetPage(
      name: kBottomNavigationBar,
      page: () => const BottomNavigationBarController(),
    ),
  ];
}
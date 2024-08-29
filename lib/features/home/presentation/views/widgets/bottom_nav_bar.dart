// ignore_for_file: deprecated_member_use
import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';
import 'package:fitness_master/core/constants/app_assets.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:fitness_master/features/home/presentation/views/home_view.dart';
import 'package:fitness_master/features/progress/presentation/views/progress_view.dart';
import 'package:fitness_master/features/settings/presentation/views/settings_view.dart';
import 'package:fitness_master/features/exercises/presentation/views/exercises_view.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/water_and_calories_view.dart';

class BottomNavigationBarController extends StatefulWidget {
  const BottomNavigationBarController({super.key});

  @override
  State<BottomNavigationBarController> createState() =>
      _BottomNavigationBarControllerState();
}

int selectedIndex = 0;

class _BottomNavigationBarControllerState
    extends State<BottomNavigationBarController> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: selectedIndex);
  }

  @override
  void dispose() {
    _controller = PersistentTabController(initialIndex: selectedIndex);
    super.dispose();
  }

  List<Widget> buildScreens() {
    return [
      const HomeView(),
      const ExercisesView(),
      const ProgressView(),
      const WaterAndCaloriesView(),
      const SettingsView(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: selectedIndex == 0
            ? const CustomSelectedIcon(
                asset: AppAssets.home,
              )
            : SvgPicture.asset(
                AppAssets.home,
              ),
      ),
      PersistentBottomNavBarItem(
        icon: selectedIndex == 1
            ? const CustomSelectedIcon(
                asset: AppAssets.exercise,
              )
            : SvgPicture.asset(AppAssets.exercise),
      ),
      PersistentBottomNavBarItem(
        icon: selectedIndex == 2
            ? const CustomSelectedIcon(
                asset: AppAssets.elements,
              )
            : SvgPicture.asset(AppAssets.elements),
      ),
      PersistentBottomNavBarItem(
        icon: selectedIndex == 3
            ? const CustomSelectedIcon(
                asset: AppAssets.chart,
              )
            : SvgPicture.asset(AppAssets.chart),
      ),
      PersistentBottomNavBarItem(
        icon: selectedIndex == 4
            ? const CustomSelectedIcon(
                asset: AppAssets.settings,
              )
            : SvgPicture.asset(AppAssets.settings),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      backgroundColor: AppColor.black,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(100.r),
      ),
      navBarHeight: 56.h,
      confineToSafeArea: false,
      margin: EdgeInsets.symmetric(horizontal: 43.5.w, vertical: 16.h),
      padding: const EdgeInsets.all(5),
      navBarStyle: NavBarStyle.simple,
      context,
      controller: _controller,
      screens: buildScreens(),
      items: navBarsItems(),
      onItemSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}

class CustomSelectedIcon extends StatelessWidget {
  const CustomSelectedIcon({
    super.key,
    required this.asset,
  });

  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0.w,
      height: 40.0.h,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColor.theme,
      ),
      child: SvgPicture.asset(
        asset,
        width: 24,
        height: 24,
        color: AppColor.black,
      ),
    );
  }
}

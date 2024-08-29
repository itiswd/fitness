import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/service/shared_preferences_singleton.dart';
import 'package:fitness_master/core/utils/app_router.dart';
import 'package:fitness_master/core/utils/my_bindings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_master/core/constants/app_color.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await SharedPref.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.transparent,
          ),
        );
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialBinding: MyBindings(),
          initialRoute: AppRouter.kSplashView,
          getPages: AppRouter.routes,
          theme: ThemeData(
            fontFamily: 'Roboto',
            scaffoldBackgroundColor: AppColor.background,
          ),
        );
      },
    );
  }
}

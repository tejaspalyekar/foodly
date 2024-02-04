import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/views/landingPage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            theme: ThemeData(
              primarySwatch: Colors.grey,
              iconTheme: const IconThemeData(color: kDark),
              scaffoldBackgroundColor: kOffWhite,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: LandingPage());
      },
    );
  }
}

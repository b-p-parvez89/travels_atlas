import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel_app_adventure_atlas/firebase_options.dart';

//import 'package:travel_app_adventure_atlas/screen/optionPage.dart';

import 'widgets/bottombar.dart';
//import 'package:travel_app_adventure_atlas/screen/splashScreen.dart';
//import 'package:travel_app_adventure_atlas/screen/loginPage.dart';


//import 'screen/signupPage.dart';
//import 'widgets/onboarding.dart';
void main()async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
     
      builder: (_ , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Adventure Atlas',
          
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child:  BottomBar(),
    );
  }
}
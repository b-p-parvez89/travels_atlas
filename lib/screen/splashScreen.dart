import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_adventure_atlas/screen/onboarding.dart';

//import 'optionPage.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
   
    super.initState();
    
  Timer(Duration(seconds: 4),()=>Get.to(OnBordingWights()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage('image/optionn.png', ))),  
      
      child:Align(
        alignment: Alignment.center,
        child:Container(
         height: 170,
         width: 300,
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            child: Image.asset('image/Rectangle.png', fit: BoxFit.fitWidth,)),
        ))
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_adventure_atlas/screen/homepage.dart';
import 'package:travel_app_adventure_atlas/screen/loginPage.dart';
import 'package:travel_app_adventure_atlas/screen/signupPage.dart';

class OptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight, image: AssetImage("image/option.png"))),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: MaterialButton(
                  onPressed: () {
                    Get.off(LoginPage());
                   // Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                  },
                  color: Colors.deepOrange,
                  minWidth: double.infinity,
                  height: 55.h,
                  child: Text("Login",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                          color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: MaterialButton(
                  onPressed: () {
                    //Get.to(() => SignUpPage());
                    Navigator.push(context, MaterialPageRoute(builder:(context) => SignUpPage(),));
                  },
                  //color: Colors.deepOrange,
                  minWidth: double.infinity,
                  height: 55.h,
                  child: Container(
                    height: 50,
                    width: 365.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrange, width: 2)),
                    child: Center(
                      child: Text("Sign up",
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "want to join as a ",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(HomePage());
                      },
                      child: Text(
                        "GUEST ?",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange),
                      ))
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

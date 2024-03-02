import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_adventure_atlas/screen/homepage.dart';
import 'package:travel_app_adventure_atlas/screen/signupPage.dart';

import '../widgets/textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _inputValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.deepOrange,
                    ),
                    onPressed: () {
                      // Get.back();
                    },
                  ),
                ),
                SizedBox(
                  width: 50.w,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 150.h,
                    width: 170.w,
                    // color: Colors.deepOrange,
                    child: ImageFiltered(
                      child: Image.asset('image/Rectangle.png',
                          fit: BoxFit.fitWidth),
                      imageFilter:
                          ColorFilter.mode(Colors.deepOrange, BlendMode.srcIn),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFieldd(
                          text: 'User Name or Password',
                          obsucer: false,
                          fiedtext: "name",
                        ),
                        TextFieldd(
                          text: 'Enter email',
                          fiedtext: "emai",
                          obsucer: false,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    }),
                                Text("Remember me",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        color:
                                            Color.fromARGB(170, 95, 92, 92))),
                              ],
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text("Forget Password?",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(170, 95, 92, 92))))
                          ],
                        ),
                        MaterialButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate() & isChecked ==
                                true) {
                              _formKey.currentState!.save();
                              Get.to(HomePage());
                              print('Input value: $_inputValue');
                            } else if (isChecked == false) {
                              Get.snackbar(
                                'Please Check Remember',
                                '',
                                snackPosition: SnackPosition.BOTTOM,
                                duration: Duration(seconds: 1),
                                backgroundColor: Colors.blue,
                                colorText: Colors.white,
                              );
                            }
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
                        Text("Or Login with",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.black.withOpacity(0.5))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                "image/facebookpic.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                "image/googlepic.png",
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? ",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black)),
                            TextButton(
                                onPressed: () {
                                  Get.to(SignUpPage());
                                },
                                child: Text("Sign up",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange)))
                          ],
                        ),
                      ])),
            )
          ],
        ),
      ),
    );
  }
}

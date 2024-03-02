import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_adventure_atlas/screen/homepage.dart';
import 'package:travel_app_adventure_atlas/screen/loginPage.dart';

import '../widgets/textField.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _password = '';
  String _confirmPassword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
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
                      text: "User Name",
                      obsucer: false,
                      fiedtext: "name",
                    ),
                    TextFieldd(
                      text: "Email",
                      obsucer: false,
                      fiedtext: "email",
                    ),
                    Center(
                        child: TextFormField(
                      //  controller: controller,
                      obscureText: true,
                      style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          color: Color.fromARGB(170, 86, 86, 98)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Password",
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 18.sp, color: Color(0xAAB3B3B3))),
                    )),
                    Center(
                        child: TextFormField(
                      //  controller: controller,
                      obscureText: true,
                      style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          color: Color.fromARGB(170, 86, 86, 98)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        } else if (value != _password) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _confirmPassword = value!;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Confrim Password",
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 18.sp, color: Color(0xAAB3B3B3))),
                    )),
                    TextFieldd(
                      text: "Phone Number",
                      obsucer: false,
                      fiedtext: "phone number",
                    ),
          
                     MaterialButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                    // Form is valid, perform the necessary actions
                    _formKey.currentState!.save();
                    Get.to(HomePage());
                    print('Password: $_password');
                    print('Confirm Password: $_confirmPassword');
                  }
                  
                      },
                      color: Colors.deepOrange,
                      minWidth: double.infinity,
                      height: 55.h,
                      child: Text("Sign up",
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)),
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
                              Get.to(LoginPage());
                            },
                            child: Text("Login",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange)))
                      ],
                    ),
                  ],
                )),
          )
        ],
      ),
    ));
  }
}

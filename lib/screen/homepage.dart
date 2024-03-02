import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../fireaseWidgets/banner.dart';
import '../fireaseWidgets/domestic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.withOpacity(0.1),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          "Adventure Atlas",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                
            
                style: GoogleFonts.poppins(
                    fontSize: 18.sp, color: Color.fromARGB(170, 56, 56, 58)),
            
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Search you Trip",
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 18.sp, color: Color.fromARGB(170, 61, 57, 57))),
              ),
            ),
            Banners(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Domestic",
                    style: GoogleFonts.poppins(
                        fontSize: 28.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                  height: 220.h,
                  width: double.infinity.w,
                  child: DomesticLocation()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "International",
                    style: GoogleFonts.poppins(
                        fontSize: 28.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                  height: 220.h,
                  width: double.infinity,
                  child: DomesticLocation()),
            ),
          ]),
        ),
      ),
    );
  }
}

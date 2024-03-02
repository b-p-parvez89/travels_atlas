import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldd extends StatelessWidget {
  final String text;
  final bool obsucer;
  final String fiedtext;
// final TextEditingController controller;

  const TextFieldd(
      {super.key,
      required this.text,
      required this.obsucer,
      required this.fiedtext});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextFormField(
      //  controller: controller,
      obscureText: obsucer,
      style: GoogleFonts.poppins(
          fontSize: 18.sp, color: Color.fromARGB(170, 86, 86, 98)),
      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter $fiedtext';
                        }
                        return null;
                      },
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: text,
          hintStyle:
              GoogleFonts.poppins(fontSize: 18.sp, color: Color(0xAAB3B3B3))),
    ));
  }
}

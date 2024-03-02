import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen/detailsPage.dart';

class DomesticLocation extends StatelessWidget {
  const DomesticLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('domestic').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        var documents = snapshot.data!.docs;

        return ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var data = documents[index].data() as Map<String, dynamic>;
            return GestureDetector(
              onTap: () {
                Get.to(DetailsPage(
                  name: data['name'],
                  city: data['city'],
                  country: data['country'],
                  images: [
                    data['image'][0],
                    data['image'][1],
                    data['image'][2],
                    data['image'][3]
                  ],
                  reviews: [data['reviews'][0], data['reviews'][1]],
                  details: data['details'],
                ));
              },
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 140.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.deepOrange,
                            image: DecorationImage(
                                image: NetworkImage(data['image'][0]),
                                fit: BoxFit.cover)),
                      ),
                      Text(
                        data['name'],
                        style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        data['city'],
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        data["country"],
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 12,
          ),
          itemCount: documents.length,
        );
      },
    );
  }
}

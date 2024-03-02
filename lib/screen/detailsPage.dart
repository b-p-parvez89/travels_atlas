import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class DetailsPage extends StatefulWidget {
  final List<String> images;
  final String name;
  final String city;
  final String country;
  final String details;
  final List<String> reviews;

  DetailsPage({
    required this.country,
    required this.images,
    required this.name,
    required this.city,
    required this.details,
    required this.reviews,
  });

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool showFullDetails = false;
  int imageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display images using PageView
            Container(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.images[imageIndex]),
                        fit: BoxFit.fill)),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  //bottom: 12,
                  child: Container(
                    height: 80,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.images.length,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    imageIndex = index;
                                  });
                                },
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: index == imageIndex
                                              ? Colors.deepOrange
                                              : Colors.white,
                                          width: 3),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              widget.images[index]),
                                          fit: BoxFit.cover)),
                                )),
                          );
                        })),
                  ),
                )),
            // Display name, city, and details
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style:
                        GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.bold,  color: Colors.deepOrange),
                  ),
                  SizedBox(height: 8.0),
                  Text(widget.city, style: GoogleFonts.poppins(fontSize: 1.0, fontWeight: FontWeight.w700,  color: Colors.white),),
                  SizedBox(height: 8.0),
                  // Toggle between short and full details
                  Text(
                    showFullDetails
                        ? widget.details
                        : widget.details.substring(0, 100),
                  ),
                  SizedBox(height: 8.0),
                  // Show More button
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showFullDetails = !showFullDetails;
                      });
                    },
                    child: Text(showFullDetails ? 'Show Less' : 'Show More'),
                  ),
                ],
              ),
            ),
            // Display reviews
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reviews',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  //Display reviews using ListView.builder
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.reviews.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(widget.reviews[index]),
                        // Add more review details if needed
                      );
                    },
                  ),
               RatingBarIndicator(
    rating: double.parse(widget.reviews[1]),
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 50.0,
    direction: Axis.vertical,
),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

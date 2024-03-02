import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final TextEditingController destinationController = TextEditingController();
  String userLocation = '';
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  bool hasChildren = false;

  @override
  void initState() {
    super.initState();
    //getUserLocation();
  }

  // Future<void> getUserLocation() async {
  //   try {
  //     Position position = await Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.high);
  //     setState(() {
  //       userLocation = '(${position.latitude}, ${position.longitude})';
  //     });
  //   } catch (e) {
  //     print("Error getting user location: $e");
  //   }
  // }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  child: ListTile(
                    title: Row(
                      children: [Text("Booking"), Text("Screen")],
                    ),
                    subtitle: Text("Lets Travel Together"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

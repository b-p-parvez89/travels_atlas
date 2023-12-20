import '../../../core/app_export.dart';

/// This class defines the variables used in the [home_page_screen_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageScreenThreeModel {
  Rx<DateTime>? selectedCheckInDate = Rx(DateTime.now());

  Rx<String> checkInDate = Rx("Check In Date");

  Rx<DateTime>? selectedCheckOutDate = Rx(DateTime.now());

  Rx<String> checkOutDate = Rx("Check out Date");
}

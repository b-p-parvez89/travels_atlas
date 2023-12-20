import '../controller/home_page_screen_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomePageScreenTwoScreen.
///
/// This class ensures that the HomePageScreenTwoController is created when the
/// HomePageScreenTwoScreen is first loaded.
class HomePageScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageScreenTwoController());
  }
}
